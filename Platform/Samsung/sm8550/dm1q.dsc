#
# Samsung Galaxy Z Flip5 (SM-F731B) - codename b5q
#
DEFINE VENDOR_NAME                    = Samsung
DEFINE PLATFORM_NAME                  = b5q
DEFINE PLATFORM_GUID                  = F731B5B5-0001-47E3-A7B9-5A435EAAB2EE
DEFINE PLATFORM_VERSION               = 0.1
DEFINE DSC_SPECIFICATION              = 0x0001001B
DEFINE OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
DEFINE SUPPORTED_ARCHITECTURES        = AARCH64
DEFINE BUILD_TARGETS                  = DEBUG|RELEASE
DEFINE SKUID_IDENTIFIER               = DEFAULT
DEFINE FLASH_DEFINITION               = Platform/Qualcomm/sm8550/sm8550.fdf

!include Platform/Qualcomm/sm8550/sm8550.dsc.inc

[LibraryClasses.common]
  # Same as original dm1q.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT

[PcdsFixedAtBuild.common]
  # Display Configuration - Z Flip5 Main display: 6.7" FHD+ 22:9 (2640x1080)
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|2640
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|1080
  
  # Device Identity
  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Samsung"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Galaxy Z Flip5"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"b5q"
  
  # Simple Init Configuration
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|480
