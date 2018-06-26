THEOS_DEVICE_IP = localhost 
THEOS_DEVICE_PORT = 2222

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ZhiHuPlugin
ZhiHuPlugin_FILES = Tweak.xm
ZhiHuPlugin_FRAMEWORKS = UIKit WebKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 osee2unifiedRelease"
