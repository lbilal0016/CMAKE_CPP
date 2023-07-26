function(target_enable_lto TARGET)

if(NOT ENABLE_LTO)
    message(STATUS "LTO/IPU deactivated.")
endif()

include(CheckIPOSupported)
check_ipo_supported(RESULT result OUTPUT output)
#   function check_ipo_supported sets ${result} -> TRUE if supported, FALSE if not
#   If any error is encountered, output message is written in variable ${output}
#   message(WARNING "IPO is not supported ${output}")


if(result)
    message(STATUS "LTO/IPU is supported.")
    set_property(TARGET ${TARGET} PROPERTY INTERPROCEDURAL_OPTIMIZATION ${ENABLE_LTO})
    #   IF ${ENABLE_LTO}=TRUE, set property interprocedural optimization for target object
else()
    message(STATUS "LTO/IPU is not supported.")
endif(result)


endfunction(target_enable_lto TARGET)
