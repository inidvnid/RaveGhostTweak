# دعم آيفون 11 وآيباد M2/M4
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0

# إنتاج ملف dylib مباشرة للحقن في Feather
PACKAGE_FORMAT = dylib

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TelegramUltraGhost
TelegramUltraGhost_FILES = Tweak.x
TelegramUltraGhost_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
