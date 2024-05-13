/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */

/**
 * UART to USB converter.
 * This software enables the microcontroller to receive data from an FPGA
 * via UART and convert it to USB HID reports.
 * */

/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "usb_device.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "usbd_hid.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
extern USBD_HandleTypeDef hUsbDeviceFS;

// Typedef: Keyboard input report
typedef struct
{
	uint8_t MODIFIER;
	uint8_t RESERVED;
	uint8_t KEYCODE1;
	uint8_t KEYCODE2;
	uint8_t KEYCODE3;
	uint8_t KEYCODE4;
	uint8_t KEYCODE5;
	uint8_t KEYCODE6;
}kbd_hid_t;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
/* An array that maps PS/2 scan codes to USB HID keyboard usage IDs.
 * This list doesn't cover all keys on the keyboard. It can be extended
 * by referencing the appropriate documentation (for PS/2 scan codes and
 * USB HID usage tables).
 * */
const uint8_t MAKECODE_HID_MAP[][2] =
{
	{0x76, 0x29}, /*ESC*/ 		{0x05, 0x3A}, /*F1*/
	{0x06, 0x3B}, /*F2*/  		{0x04, 0x3C}, /*F3*/
	{0x0C, 0x3D}, /*F4*/  		{0x03, 0x3E}, /*F5*/
	{0x0B, 0x3F}, /*F6*/  		{0x83, 0x40}, /*F7*/
	{0x0A, 0x41}, /*F8*/  		{0x01, 0x42}, /*F9*/
	{0x09, 0x43}, /*F10*/ 		{0x78, 0x44}, /*F11*/
	{0x07, 0x45}, /*F12*/ 		{0x16, 0x1E}, /*1*/
	{0x1E, 0x1F}, /*2*/   		{0x26, 0x20}, /*3*/
	{0x25, 0x21}, /*4*/   		{0x2E, 0x22}, /*5*/
	{0x36, 0x23}, /*6*/   		{0x3D, 0x24}, /*7*/
	{0x3E, 0x25}, /*8*/   		{0x46, 0x26}, /*9*/
	{0x45, 0x27}, /*0*/   		{0x4E, 0x2D}, /*-*/
	{0x55, 0x2E}, /*=*/   		{0x66, 0x2A}, /*Backspace*/
	{0x0D, 0x2B}, /*Tab*/ 		{0x15, 0x14}, /*Q*/
	{0x1D, 0x1A}, /*W*/   		{0x24, 0x08}, /*E*/
	{0x2D, 0x15}, /*R*/   		{0x2C, 0x17}, /*T*/
	{0x35, 0x1C}, /*Y*/   		{0x3C, 0x18}, /*U*/
	{0x43, 0x0C}, /*I*/   		{0x44, 0x12}, /*O*/
	{0x4D, 0x13}, /*P*/   		{0x54, 0x2F}, /*[*/
	{0x5B, 0x30}, /*]*/ 		{0x5D, 0x31}, /*\*/
	{0x58, 0x39}, /*Caps Lock*/	{0x1C, 0x04}, /*A*/
	{0x1B, 0x16}, /*S*/ 		{0x23, 0x07}, /*D*/
	{0x2B, 0x09}, /*F*/ 		{0x34, 0x0A}, /*G*/
	{0x33, 0x0B}, /*H*/ 		{0x3B, 0x0D}, /*J*/
	{0x42, 0x0E}, /*K*/ 		{0x4B, 0x0F}, /*L*/
	{0x4C, 0x33}, /*;*/ 		{0x52, 0x34}, /*'*/
	{0x5A, 0x28}, /*Enter*/ 	{0x12, 0xE1}, /*Shift(L)*/
	{0x1A, 0x1D}, /*Z*/ 		{0x22, 0x1B}, /*X*/
	{0x21, 0x06}, /*C*/ 		{0x2A, 0x19}, /*V*/
	{0x32, 0x05}, /*B*/ 		{0x31, 0x11}, /*N*/
	{0x3A, 0x10}, /*M*/ 		{0x41, 0x36}, /*,*/
	{0x49, 0x37}, /*.*/ 		{0x4A, 0x38}, /*/*/
	{0x59, 0xE5}, /*Shift(R)*/ 	{0x14, 0xE0}, /*Ctrl(L)*/
	{0x11, 0xE2}, /*Alt(L)*/ 	{0x29, 0x2C}, /*Spacebar*/
};
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART2_UART_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
/**
 * @brief Return USB HID usage ID for corresponding PS/2 scan code.
 * */
static uint8_t Get_HID_UsageID(uint8_t scanCode)
{
	const uint8_t LEN = sizeof(MAKECODE_HID_MAP) / sizeof(MAKECODE_HID_MAP[0]);
	uint8_t hidUsage = 0;
	for(uint8_t i = 0; i < LEN; i++)
	{
		if(scanCode == MAKECODE_HID_MAP[i][0])
		{
			hidUsage = MAKECODE_HID_MAP[i][1];
			break;
		}
	}
	return hidUsage;
}

/**
 * @brief Write data to USB HID report byte using PS/2 scan codes.
 * */
static void Write_HID_ReportByte(uint8_t* pReportByte,
                                 uint8_t val,
                                 uint8_t scanCode)
{
	const uint8_t BREAKCODE_PREFIX = 0xF0;
	static uint8_t prevCode;
	if(prevCode != BREAKCODE_PREFIX)
	{
		*pReportByte = val;
	}
	else
	{
		*pReportByte = 0;
	}
	prevCode = scanCode;
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART2_UART_Init();
  MX_USB_DEVICE_Init();
  /* USER CODE BEGIN 2 */
  const uint8_t UART_BYTES = 1; //Number of UART bytes
  const uint8_t EXTCODE_PREFIX = 0xE0; //Extended keys scan code prefix
  const uint8_t PAUSE_PREFIX = 0xE1; //For Pause/Break key
  const uint8_t REPORT_SIZE = sizeof(kbd_hid_t);
  kbd_hid_t kbd = {}; //64 byte HID keyboard input report buffer
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	  uint8_t scanCode = 0;
	  HAL_UART_Receive(&huart2, &scanCode, UART_BYTES, HAL_MAX_DELAY);

	  if(scanCode != EXTCODE_PREFIX && scanCode != PAUSE_PREFIX)
	  {
		  uint8_t hidUsage = Get_HID_UsageID(scanCode);
		  uint8_t modifier = 0;
		  /* Check HID Usage IDs for 'modifier' keys and KEYCODE1 */
		  switch(hidUsage)
		  {
		  case 0xE0:
		  case 0xE1:
		  case 0xE2:
		  case 0xE3:
		  case 0xE4:
		  case 0xE5:
		  case 0xE6:
		  case 0xE7:
			  modifier = 1 << (hidUsage - 0xE0);
			  Write_HID_ReportByte(&kbd.MODIFIER, modifier, scanCode);
			  break;
		  default:
			  Write_HID_ReportByte(&kbd.KEYCODE1, hidUsage, scanCode);
			  break;
		  }
	  }
	  else
	  {
		  /* CODE TO HANDLE EXTENDED KEYS */
	  }

	  USBD_HID_SendReport(&hUsbDeviceFS, (uint8_t*)&kbd, REPORT_SIZE);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL6;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USB;
  PeriphClkInit.UsbClockSelection = RCC_USBCLKSOURCE_PLL;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
