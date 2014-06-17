# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src/main)

LOCAL_JAVA_LIBRARIES := \
    asm-tools \
    asm-commons \
    maven-plugin-api \
    apache-ant

LOCAL_MODULE := jarjar
LOCAL_MODULE_TAGS := optional
LOCAL_JAR_MANIFEST := manifest.txt
LOCAL_JAVA_RESOURCE_DIRS := res

include $(BUILD_HOST_JAVA_LIBRARY)

##################################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_JAVA_LIBRARIES := \
    asm-tools:lib/asm-4.0$(COMMON_JAVA_PACKAGE_SUFFIX) \
    asm-commons:lib/asm-commons-4.0$(COMMON_JAVA_PACKAGE_SUFFIX) \
    maven-plugin-api:lib/maven-plugin-api$(COMMON_JAVA_PACKAGE_SUFFIX) \
    apache-ant:lib/apache-ant-1.9.4$(COMMON_JAVA_PACKAGE_SUFFIX)

LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_PREBUILT)
