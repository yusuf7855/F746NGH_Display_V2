#include <gui/screen1_screen/Screen1View.hpp>
#include "string.h"
#include "PollingRoutines.h"

extern uint8_t uartMsgBuf[UART_BUF_SIZE];

Screen1View::Screen1View()
{

}

void Screen1View::setupScreen()
{
    Screen1ViewBase::setupScreen();
}

void Screen1View::tearDownScreen()
{
    Screen1ViewBase::tearDownScreen();
}
/*void Screen1View::dataDisplay() {
    Unicode::strncpy(textArea1Buffer, (char *)RxBuf, sizeof(RxBuf));
	textArea1.resizeToCurrentText();
	textArea1.invalidate();
	memset(RxBuf, 0,  sizeof(RxBuf));
}*/

void Screen1View::uartMsgRdy()
{
  if(uartMsgBuf[0]==0)return;

  memset(&textArea1Buffer,0,TEXTAREA1_SIZE);
  Unicode::strncpy(textArea1Buffer, (char *)uartMsgBuf, TEXTAREA1_SIZE-1);
  textArea1Buffer[16]='\0';
  textArea1.invalidate();
}
