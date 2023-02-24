################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../STM32746G-Discovery/stm32746g_discovery.c \
../STM32746G-Discovery/stm32746g_discovery_qspi.c \
../STM32746G-Discovery/stm32746g_discovery_ts.c 

C_DEPS += \
./STM32746G-Discovery/stm32746g_discovery.d \
./STM32746G-Discovery/stm32746g_discovery_qspi.d \
./STM32746G-Discovery/stm32746g_discovery_ts.d 

OBJS += \
./STM32746G-Discovery/stm32746g_discovery.o \
./STM32746G-Discovery/stm32746g_discovery_qspi.o \
./STM32746G-Discovery/stm32746g_discovery_ts.o 


# Each subdirectory must supply rules for building sources it contributes
STM32746G-Discovery/%.o STM32746G-Discovery/%.su: ../STM32746G-Discovery/%.c STM32746G-Discovery/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../TouchGFX/App -I../TouchGFX/target/generated -I../TouchGFX/target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -I"C:/Users/sena/STM32CubeIDE/workspace_1.10.1/F746NGH_Display_V2/Components/Common" -I"C:/Users/sena/STM32CubeIDE/workspace_1.10.1/F746NGH_Display_V2/Components/ft5336" -I"C:/Users/sena/STM32CubeIDE/workspace_1.10.1/F746NGH_Display_V2/Components/n25q128a" -I"C:/Users/sena/STM32CubeIDE/workspace_1.10.1/F746NGH_Display_V2/STM32746G-Discovery" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-STM32746G-2d-Discovery

clean-STM32746G-2d-Discovery:
	-$(RM) ./STM32746G-Discovery/stm32746g_discovery.d ./STM32746G-Discovery/stm32746g_discovery.o ./STM32746G-Discovery/stm32746g_discovery.su ./STM32746G-Discovery/stm32746g_discovery_qspi.d ./STM32746G-Discovery/stm32746g_discovery_qspi.o ./STM32746G-Discovery/stm32746g_discovery_qspi.su ./STM32746G-Discovery/stm32746g_discovery_ts.d ./STM32746G-Discovery/stm32746g_discovery_ts.o ./STM32746G-Discovery/stm32746g_discovery_ts.su

.PHONY: clean-STM32746G-2d-Discovery

