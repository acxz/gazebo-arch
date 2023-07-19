# Install script for directory: /home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/cli/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/pkg/ignition-utils-1/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/sbin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "cmake" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-cli" TYPE FILE FILES
    "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/cmake/ignition-utils1-cli-config.cmake"
    "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/cmake/ignition-utils1-cli-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-cli/ignition-utils1-cli-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-cli/ignition-utils1-cli-targets.cmake"
         "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/cli/src/CMakeFiles/Export/3353776af6dd9a015f20a1fc2b7939ee/ignition-utils1-cli-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-cli/ignition-utils1-cli-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-cli/ignition-utils1-cli-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-cli" TYPE FILE FILES "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/cli/src/CMakeFiles/Export/3353776af6dd9a015f20a1fc2b7939ee/ignition-utils1-cli-targets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pkgconfig" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/pkg/ignition-utils-1/usr/lib/pkgconfig/ignition-utils1-cli.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/pkg/ignition-utils-1/usr/lib/pkgconfig" TYPE FILE FILES "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/cmake/pkgconfig/ignition-utils1-cli.pc")
endif()

