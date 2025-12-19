export TARGET = iphone:clang:latest:14.0
export ARCHS = arm64

INSTALL_TARGET_PROCESSES = Rave

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RaveGhost

RaveGhost_FILES = Tweak.x
RaveGhost_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
