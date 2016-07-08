################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
DSP2803x_CodeStartBranch.obj: D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/source/DSP2803x_CodeStartBranch.asm $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="DSP2803x_CodeStartBranch.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_CpuTimers.obj: D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/source/DSP2803x_CpuTimers.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="DSP2803x_CpuTimers.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_DefaultIsr.obj: D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/source/DSP2803x_DefaultIsr.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="DSP2803x_DefaultIsr.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_GlobalVariableDefs.obj: D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="DSP2803x_GlobalVariableDefs.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_I2C.obj: D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/source/DSP2803x_I2C.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="DSP2803x_I2C.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_PieCtrl.obj: D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/source/DSP2803x_PieCtrl.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="DSP2803x_PieCtrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_PieVect.obj: D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/source/DSP2803x_PieVect.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="DSP2803x_PieVect.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_SysCtrl.obj: D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/source/DSP2803x_SysCtrl.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="DSP2803x_SysCtrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_usDelay.obj: D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/source/DSP2803x_usDelay.asm $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="DSP2803x_usDelay.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Example_2803xI2C_eeprom.obj: ../Example_2803xI2C_eeprom.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="D:/ti/ccsv6/tools/compiler/c2000_15.12.2.LTS/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_headers/include" --include_path="D:/ti/controlSUITE/device_support/f2803x/v127/DSP2803x_common/include" --include_path="D:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --verbose_diagnostics --diag_warning=225 --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="Example_2803xI2C_eeprom.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


