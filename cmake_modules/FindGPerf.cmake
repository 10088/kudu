# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# -*- cmake -*-

# - Find Google perftools
# Find the Google perftools includes and libraries
# This module defines
#  GOOGLE_PERFTOOLS_INCLUDE_DIR, where to find heap-profiler.h, etc.
#  GOOGLE_PERFTOOLS_FOUND, If false, do not try to use Google perftools.
# also defined for general use are
#  TCMALLOC_SHARED_LIB, path to tcmalloc's shared library
#  TCMALLOC_STATIC_LIB, path to tcmalloc's static library
#  PROFILER_SHARED_LIB, path to libprofiler's shared library
#  PROFILER_STATIC_LIB, path to libprofiler's static library

FIND_PATH(GOOGLE_PERFTOOLS_INCLUDE_DIR google/heap-profiler.h
  NO_CMAKE_SYSTEM_PATH
  NO_SYSTEM_ENVIRONMENT_PATH)
FIND_LIBRARY(TCMALLOC_SHARED_LIB tcmalloc
  NO_CMAKE_SYSTEM_PATH
  NO_SYSTEM_ENVIRONMENT_PATH)
FIND_LIBRARY(TCMALLOC_STATIC_LIB libtcmalloc.a
  NO_CMAKE_SYSTEM_PATH
  NO_SYSTEM_ENVIRONMENT_PATH)
FIND_LIBRARY(PROFILER_SHARED_LIB profiler
  NO_CMAKE_SYSTEM_PATH
  NO_SYSTEM_ENVIRONMENT_PATH)
FIND_LIBRARY(PROFILER_STATIC_LIB libprofiler.a
  NO_CMAKE_SYSTEM_PATH
  NO_SYSTEM_ENVIRONMENT_PATH)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(GOOGLE_PERFTOOLS REQUIRED_VARS
  TCMALLOC_SHARED_LIB TCMALLOC_STATIC_LIB
  PROFILER_SHARED_LIB PROFILER_STATIC_LIB
  GOOGLE_PERFTOOLS_INCLUDE_DIR)
