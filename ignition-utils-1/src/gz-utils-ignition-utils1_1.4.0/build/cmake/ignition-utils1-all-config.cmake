# - Config to retrieve all components of the ignition-utils1 package
#
# This should only be invoked by ignition-utils1-config.cmake.
#
# To retrieve this meta-package, use:
# find_package(ignition-utils1 COMPONENTS all)
#
# This creates the target ignition-utils1::all which will link to all known
# components of ignition-utils1, including the core library.
#
# This also creates the variable ignition-utils1_ALL_LIBRARIES
#
################################################################################

cmake_minimum_required(VERSION 3.10.2 FATAL_ERROR)

if(ignition-utils1_ALL_CONFIG_INCLUDED)
  return()
endif()
set(ignition-utils1_ALL_CONFIG_INCLUDED TRUE)

if(NOT ignition-utils1-all_FIND_QUIETLY)
  message(STATUS "Looking for all libraries of ignition-utils1 -- found version 1.4.0")
endif()


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was ignition-all-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

# Get access to the find_dependency utility
include(CMakeFindDependencyMacro)

# Find the core library
find_dependency(ignition-utils1 1.4.0 EXACT)

# Find the component libraries
find_dependency(ignition-utils1-cli 1.4.0 EXACT)

if(NOT TARGET ignition-utils1::ignition-utils1-all)
  include("${CMAKE_CURRENT_LIST_DIR}/ignition-utils1-all-targets.cmake")

  add_library(ignition-utils1::all INTERFACE IMPORTED)
  set_target_properties(ignition-utils1::all PROPERTIES
    INTERFACE_LINK_LIBRARIES "ignition-utils1::ignition-utils1-all")

endif()

# Create the "requested" target if it does not already exist
if(NOT TARGET ignition-utils1::requested)
  add_library(ignition-utils1::requested INTERFACE IMPORTED)
endif()

# Link the "all" target to the "requested" target
get_target_property(ign_requested_components ignition-utils1::requested INTERFACE_LINK_LIBRARIES)
if(NOT ign_requested_components)
  set_target_properties(ignition-utils1::requested PROPERTIES
    INTERFACE_LINK_LIBRARIES "ignition-utils1::ignition-utils1-all")
else()
  set_target_properties(ignition-utils1::requested PROPERTIES
    INTERFACE_LINK_LIBRARIES "${ign_requested_components};ignition-utils1::ignition-utils1-all")
endif()

set(ignition-utils1_ALL_LIBRARIES ignition-utils1::ignition-utils1-all)
