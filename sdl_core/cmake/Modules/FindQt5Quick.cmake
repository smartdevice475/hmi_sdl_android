execute_process(
  COMMAND ${CMAKE_SOURCE_DIR}/FindQt.sh -v ${qt_version} Qt5QuickConfig.cmake
  OUTPUT_VARIABLE config_file
)

if(config_file STREQUAL "")
  message(FATAL_ERROR "Qt5 Quick module not found")
endif(config_file STREQUAL "")

include(${config_file})
