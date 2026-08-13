TARGET := iphone:clang:16.5:14.0
INSTALL_TARGET_PROCESSES = FXStore
ARCHS = arm64
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
PACKAGE_FORMAT = ipa

GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = FXStore

FXStore_FILES = $(wildcard *.m)
FXStore_FRAMEWORKS = UIKit CoreGraphics CoreServices SystemConfiguration
FXStore_PRIVATE_FRAMEWORKS = Preferences StoreKitUI
FXStore_CFLAGS = -fobjc-arc
FXStore_CODESIGN_FLAGS = -Sentitlements.plist

include $(THEOS_MAKE_PATH)/application.mk
