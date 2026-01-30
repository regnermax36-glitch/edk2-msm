[Defines]
  VENDOR_NAME                    = Samsung
  PLATFORM_NAME                  = b5q
  PLATFORM_GUID                  = f731b5b5-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sm8550/sm8550.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Samsung/sm8550/b5q.fdf.inc

!include Platform/Qualcomm/sm8550/sm8550.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT

[PcdsFixedAtBuild.common]
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|2640
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|1080

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|480

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Samsung"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Galaxy Z Flip5"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"b5q"
