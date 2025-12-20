# دعم معماريات M2/M4 وآيفون 11
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0

# هذا السطر هو الحل لمنع خطأ dylib-format
FINALPACKAGE = 1
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TelegramUltraGhost
TelegramUltraGhost_FILES = Tweak.x
TelegramUltraGhost_CFLAGS = -fobjc-arc

# إجبار النظام على بناء مكتبة ديناميكية فقط
include $(THEOS_MAKE_PATH)/tweak.mk
