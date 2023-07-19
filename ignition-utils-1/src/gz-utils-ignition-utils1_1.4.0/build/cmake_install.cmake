# Install script for directory: /home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-all" TYPE FILE FILES
    "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/cmake/ignition-utils1-all-config.cmake"
    "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/cmake/ignition-utils1-all-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-all/ignition-utils1-all-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-all/ignition-utils1-all-targets.cmake"
         "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/CMakeFiles/Export/3f3da82a844f88183b15d40b3eeaea9b/ignition-utils1-all-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-all/ignition-utils1-all-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-all/ignition-utils1-all-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-utils1-all" TYPE FILE FILES "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/CMakeFiles/Export/3f3da82a844f88183b15d40b3eeaea9b/ignition-utils1-all-targets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  EXECUTE_PROCESS(COMMAND $(MAKE) man)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ignition/ignition-utils1" TYPE FILE FILES "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/ignition-utils1.tag.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/src/cmake_install.cmake")
  include("/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/include/cmake_install.cmake")
  include("/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/cli/src/cmake_install.cmake")
  include("/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/cli/include/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/bernd/Desktop/GithubProjects/gazebo-arch/ignition-utils-1/src/gz-utils-ignition-utils1_1.4.0/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
