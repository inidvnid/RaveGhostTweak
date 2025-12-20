ARCHS = arm64
TARGET = iphone:clang:latest:15.0
TWEAK_NAME = RaveGhost
RaveGhost_FILES = Tweak.x
RaveGhost_CFLAGS = -fobjc-arc
include $(THEOS_MAKE_PATH)/tweak.mk
