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
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef enum
{
	RS_CODE = 0,
	RS_DATA
}RegSelect;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
SPI_HandleTypeDef hspi2;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_SPI2_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
/**
 * @brief Converts an integer to a string.
*/
static void Integer_To_String(uint32_t integer, char* string_ptr)
{
	if(integer == 0)
	{
		string_ptr[0] = '0';
		return;
	}
	uint32_t integer_copy = integer;
	uint8_t num_of_digits = 0;

	while(integer_copy > 0)
	{
		integer_copy /= 10;
		num_of_digits++;
	}
	while(integer > 0)
	{
		string_ptr[num_of_digits - 1] = '0' + (integer % 10);
		integer /= 10;
		num_of_digits--;
	}
}

/**
 * @brief Encodes LCD data and instructions in a 16-bit unsigned integer and
 * transmits to the FPGA (serial-parallel converter) via the SPI protocol.
 * */
static void SPI_LCD_Write(RegSelect rs, uint8_t data)
{
	// The least-significant byte represents the data byte (DB) of the LCD.
	// Bits 8 and 9 of the most-significant byte represent EN and RS
	// respectively.
	// A word could be 8-bits or 16-bits based on the SPI configuration.
	// For 8-bit data, 1 word = 8 bits. The same applies to 16-bit data.
	const uint8_t NUM_OF_SPI_WORDS = 1;
	const uint8_t EN_BIT = 8;
	const uint8_t RS_BIT = 9;
	uint32_t timeout = 200;
	uint16_t spi_data = 0;

	switch(rs)
	{
	case RS_CODE:
		spi_data &= ~(1 << RS_BIT);
		break;
	case RS_DATA:
		spi_data |= (1 << RS_BIT);
		break;
	}
	spi_data |= data;
	spi_data |= (1 << EN_BIT);
	HAL_SPI_Transmit(&hspi2, (uint8_t*)&spi_data, NUM_OF_SPI_WORDS, timeout);
	HAL_Delay(1);

	spi_data &= ~(1 << EN_BIT);
	HAL_SPI_Transmit(&hspi2, (uint8_t*)&spi_data, NUM_OF_SPI_WORDS, timeout);
	HAL_Delay(1);
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
  MX_SPI2_Init();
  /* USER CODE BEGIN 2 */
  //LCD initialization commands
  const uint8_t FUNC_SEL = 0x38;
  const uint8_t DISP_ON = 0x0C;
  const uint8_t DISP_CLR = 0x01;
  const uint8_t ENTRY_MODE = 0x06;

  HAL_Delay(16); //Power-on delay (16 ms)
  SPI_LCD_Write(RS_CODE, FUNC_SEL);
  HAL_Delay(5);
  SPI_LCD_Write(RS_CODE, FUNC_SEL);
  HAL_Delay(1);

  SPI_LCD_Write(RS_CODE, FUNC_SEL);
  SPI_LCD_Write(RS_CODE, FUNC_SEL);
  SPI_LCD_Write(RS_CODE, DISP_ON);
  SPI_LCD_Write(RS_CODE, ENTRY_MODE);
  SPI_LCD_Write(RS_CODE, DISP_CLR);
  //Extra delay to account for 'Clear Display' instruction execution time.
  HAL_Delay(1);
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  char disp[] = "Count = ";
  uint8_t disp_len = strlen(disp);
  for(uint8_t i = 0; i < disp_len; i++)
  {
	  SPI_LCD_Write(RS_DATA, (uint8_t)disp[i]);
  }

  //Two-digit counter
  const uint8_t CURSOR_ZERO = 0x80; //Set cursor to 1st row, 1st column
  const uint8_t NUM_OF_COUNTS = 100;
  char digit[3] = {0};
  uint8_t count = 0;
  while(count < NUM_OF_COUNTS)
  {
	  Integer_To_String(count, digit);
	  SPI_LCD_Write(RS_CODE, CURSOR_ZERO + disp_len); //Set cursor
	  if(count < 10)
	  {
		  SPI_LCD_Write(RS_DATA, (uint8_t)'0');
		  SPI_LCD_Write(RS_DATA, (uint8_t)digit[0]);
	  }
	  else
	  {
		  SPI_LCD_Write(RS_DATA, (uint8_t)digit[0]);
		  SPI_LCD_Write(RS_DATA, (uint8_t)digit[1]);
	  }
	  HAL_Delay(1000);
	  count++;
  }

  while (1)
  {
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
  LL_FLASH_SetLatency(LL_FLASH_LATENCY_0);
  while(LL_FLASH_GetLatency()!= LL_FLASH_LATENCY_0)
  {
  }
  LL_PWR_SetRegulVoltageScaling(LL_PWR_REGU_VOLTAGE_SCALE2);
  LL_RCC_HSI_SetCalibTrimming(16);
  LL_RCC_HSI_Enable();

   /* Wait till HSI is ready */
  while(LL_RCC_HSI_IsReady() != 1)
  {

  }
  LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
  LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_2);
  LL_RCC_SetAPB2Prescaler(LL_RCC_APB2_DIV_1);
  LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_HSI);

   /* Wait till System clock is ready */
  while(LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_HSI)
  {

  }
  LL_SetSystemCoreClock(16000000);

   /* Update the time base */
  if (HAL_InitTick (TICK_INT_PRIORITY) != HAL_OK)
  {
    Error_Handler();
  }
  LL_RCC_SetTIMPrescaler(LL_RCC_TIM_PRESCALER_TWICE);
}

/**
  * @brief SPI2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI2_Init(void)
{

  /* USER CODE BEGIN SPI2_Init 0 */

  /* USER CODE END SPI2_Init 0 */

  /* USER CODE BEGIN SPI2_Init 1 */

  /* USER CODE END SPI2_Init 1 */
  /* SPI2 parameter configuration*/
  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_16BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi2.Init.NSS = SPI_NSS_HARD_OUTPUT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI2_Init 2 */

  /* USER CODE END SPI2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{

  /* GPIO Ports Clock Enable */
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);

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
