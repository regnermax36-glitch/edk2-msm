update for Samsung galaxy z flip5 model SM-F731B: [Defines]
  VENDOR_NAME                    = Samsung
- PLATFORM_NAME                  = q2q
+ PLATFORM_NAME                  = b5q
- PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
+ PLATFORM_GUID                  = f731b5b5-0001-47e3-a7b9-5a435eaab2ee  # Updated GUID
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sm8550/sm8550.fdf
- DEVICE_DXE_FV_COMPONENTS       = Platform/Samsung/sm8550/q2q.fdf.inc
+ DEVICE_DXE_FV_COMPONENTS       = Platform/Samsung/sm8550/b5q.fdf.inc

!include Platform/Qualcomm/sm8550/sm8550.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT

[PcdsFixedAtBuild.common]
  # Z Flip5 Main display: 6.7" FHD+ 22:9 (2640x1080 when unfolded)
  # Cover display: 3.4" Super AMOLED (720x748)
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|2640
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|1080
  
  # Optional: Add cover display configuration
  # gQcomTokenSpaceGuid.PcdSecondaryMipiFrameBufferWidth|720
  # gQcomTokenSpaceGuid.PcdSecondaryMipiFrameBufferHeight|748

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|480

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Samsung"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Galaxy Z Flip5"
- gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"q2q"
+ gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"b5q"
  
  # Z Flip5 specific PCDs (if needed)
  # gRenegadePkgTokenSpaceGuid.PcdHasFlexDisplay|TRUE
  # gRenegadePkgTokenSpaceGuid.PcdHasCoverDisplay|TRUE
