#
# Copyright (C) 2010-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=jd_openwrt_script
PKG_VERSION:=1
PKG_RELEASE:=14
#PKG_FLAGS:=nonshared

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/jd_openwrt_script
  TITLE:=x86/x64 Install Script.
  MAINTAINER:=ITdesk
  DEPENDS:=+git +git-http +node +node-npm +openssh-client +openssh-keygen +python3 +luci-app-dockerman +fdisk
endef

define Package/jd_openwrt_script/description
Script Used
	1.https://github.com/xdhgsq/xdh.git
	2.https://github.com/xdhgsq/xdh_plug.git
	3.https://github.com/xdhgsq/Checkjs.git

Dependent requirements
	git *
	git-http *
	node >=10 *
	node-npm >=10 *
	openssh-client
	openssh-keygen
	python3 *
	luci-app-dockerman *
	fdisk *

Please meet the above dependencies, otherwise you may not be able to use the script normally

endef

define Build/Compile
endef

define Package/jd_openwrt_script/conffies
	/usr/share/jd_openwrt_script/config
endef

define Package/jd_openwrt_script/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/jd_openwrt_script $(1)/etc/init.d/jd_openwrt_script
endef

$(eval $(call BuildPackage,jd_openwrt_script))
