DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

export ARCHS = arm64 arm64e
TARGET = iphoneos:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BrazileiroV1

BrazileiroV1_FILES = Tweak.xm
BrazileiroV1_CFLAGS = -fobjc-arc -w
BrazileiroV1_LDFLAGS = -lsubstrate

include $(THEOS_MAKE_PATH)/tweak.mk
