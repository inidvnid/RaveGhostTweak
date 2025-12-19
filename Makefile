ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RaveGhost
RaveGhost_FILES = Tweak.x
RaveGhost_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
