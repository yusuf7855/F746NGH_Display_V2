################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/ft5336/ft5336.c 

C_DEPS += \
./Components/ft5336/ft5336.d 

OBJS += \
./Components/ft5336/ft5336.o 


# Each subdirectory must supply rules for building sources it contributes
Components/ft5336/%.o Components/ft5336/%.su: ../Components/ft5336/%.c Components/ft5336/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../TouchGFX/App -I../TouchGFX/target/generated -I../TouchGFX/target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -I"C:/Users/sena/STM32CubeIDE/workspace_1.10.1/F746NGH_Display_V2/Components/Common" -I"C:/Users/sena/STM32CubeIDE/workspace_1.10.1/F746NGH_Display_V2/Components/ft5336" -I"C:/Users/sena/STM32CubeIDE/workspace_1.10.1/F746NGH_Display_V2/Components/n25q128a" -I"C:/Users/sena/STM32CubeIDE/workspace_1.10.1/F746NGH_Display_V2/STM32746G-Discovery" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Components-2f-ft5336

clean-Components-2f-ft5336:
	-$(RM) ./Components/ft5336/ft5336.d ./Components/ft5336/ft5336.o ./Components/ft5336/ft5336.su

.PHONY: clean-Components-2f-ft5336

