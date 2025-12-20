# دعم معالجات M2/M4 وآيفون 11
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0

# حل جذري لخطأ Code 2: إجبار النظام على وضع dylib
FINALPACKAGE = 1
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TelegramUltraGhost
TelegramUltraGhost_FILES = Tweak.x
TelegramUltraGhost_CFLAGS = -fobjc-arc

# إبقاء البناء في صيغة dylib للحقن المباشر في Feather
include $(THEOS_MAKE_PATH)/tweak.mk
