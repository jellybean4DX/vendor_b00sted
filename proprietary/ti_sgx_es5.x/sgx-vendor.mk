# Copyright (C) 2011 The Android Open Source Project
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

# TI SGX DDK 1.8 ES 5.x
PRODUCT_COPY_FILES += \
	vendor/b00sted/proprietary/ti_sgx_es5.x/gralloc.omap3.so:/system/lib/hw/gralloc.omap3.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libEGL_POWERVR_SGX530_125.so:/system/lib/egl/libEGL_POWERVR_SGX530_125.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libGLESv1_CM_POWERVR_SGX530_125.so:/system/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libGLESv2_POWERVR_SGX530_125.so:/system/lib/egl/libGLESv2_POWERVR_SGX530_125.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libpvr2d.so:/system/lib/libpvr2d.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libeglinfo.so:/system/lib/libeglinfo.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libusc.so:/system/lib/libusc.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libglslcompiler.so:/system/lib/libglslcompiler.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libpvrANDROID_WSEGL.so:/system/lib/libpvrANDROID_WSEGL.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libsrv_um.so:/system/lib/libsrv_um.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libIMGegl.so:/system/lib/libIMGegl.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libsrv_init.so:/system/lib/libsrv_init.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/libPVRScopeServices.so:/system/lib/libPVRScopeServices.so \
	vendor/b00sted/proprietary/ti_sgx_es5.x/pvrsrvctl:/system/bin/pvrsrvctl \
	vendor/b00sted/proprietary/ti_sgx_es5.x/pvrsrvinit:/system/bin/pvrsrvinit 
	vendor/b00sted/proprietary/ti_sgx_es5.x/libgles1_texture_stream.so:system/lib/egl/libgles1_texture_stream.so \	  	
        vendor/b00sted/proprietary/ti_sgx_es5.x/libgles2_texture_stream.so:system/lib/egl/libgles2_texture_stream.so