################################################################################
#
# skolar-display
#
################################################################################

SKOLAR_DISPLAY_VERSION = master
#SKOLAR_DISPLAY_SITE    = $(call github,kodira,skolar-display,$(SKOLAR_DISPLAY_VERSION))
#SKOLAR_DISPLAY_SITE    = git://git\@github.com\:kodira/skolar-display.git
SKOLAR_DISPLAY_SITE     = http://kodira.de/dropbox/misc/
#SKOLAR_DISPLAY_METHOD = git

define SKOLAR_DISPLAY_CONFIGURE_CMDS
    cd $(@D); \
    $(HOST_DIR)/usr/bin/qmake
endef

define SKOLAR_DISPLAY_BUILD_CMDS
     $(MAKE) -C $(@D)
endef

# TODO: Rename smartdisplay to skolar-display (binary and here)
define SKOLAR_DISPLAY_INSTALL_TARGET_CMDS
    install -D -m 0755 $(@D)/smartdisplay $(TARGET_DIR)/usr/bin/skolar-display
    install -D -m 0755 package/skolar-display/S90skolar-display $(TARGET_DIR)/etc/init.d/S90skolar-display
endef

$(eval $(generic-package))

