/*
 * PollingRoutines.c
 *
 *  Created on: Feb 15, 2023
 *      Author: 90531
 */
#include "main.h"
#include "string.h"
#include "PollingRoutines.h"
#include "cmsis_os.h"

extern UART_HandleTypeDef huart6;
extern osSemaphoreId binarySemUartMsgHandle;

uint8_t uartMsgBuf[UART_BUF_SIZE];
uint8_t uartMsgData[2];
uint8_t msgIndex = 0;
uint8_t msgRdyFlag = 0;


void PollingInit(){

	HAL_UART_Receive_IT(&huart6, uartMsgData, 1);

}

void PollingRoutine(){

	if(msgRdyFlag)
	{
		xSemaphoreGive(binarySemUartMsgHandle);
       msgRdyFlag = 0;
	}
}


void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart){

	if(msgIndex == 0){
		memset(&uartMsgBuf, 0 , sizeof(uartMsgBuf));
	}
	if (uartMsgData[0] != 13) {
		uartMsgBuf[msgIndex++] = uartMsgData[0];
	}
	else
	{
		uartMsgBuf[msgIndex] = uartMsgData[0];
		msgIndex=0;

		msgRdyFlag = 1;
	}

	HAL_UART_Receive_IT(huart, uartMsgData, 1);

}
