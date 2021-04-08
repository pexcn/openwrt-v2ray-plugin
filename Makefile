include $(TOPDIR)/rules.mk

PKG_NAME:=v2ray-plugin
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)/$(PKG_SOURCE_SUBDIR)

include $(INCLUDE_DIR)/package.mk

define Package/v2ray-plugin
	SECTION:=net
	CATEGORY:=Network
	TITLE:=A SIP003 plugin based on v2ray
	URL:=https://github.com/shadowsocks/v2ray-plugin
endef

define Package/v2ray-plugin/description
Yet another SIP003 plugin for shadowsocks, based on v2ray.
endef

ifeq ($(ARCH),i386)
	BIN_ARCH:=386
endif
ifeq ($(ARCH),x86_64)
	BIN_ARCH:=amd64
endif
ifeq ($(ARCH),arm)
	BIN_ARCH:=arm7
endif
ifeq ($(ARCH),aarch64)
	BIN_ARCH:=arm64
endif
ifeq ($(ARCH),mips)
	BIN_ARCH:=mips_sf
endif
ifeq ($(ARCH),mipsel)
	BIN_ARCH:=mipsle_sf
endif

define Build/Compile
endef

define Package/v2ray-plugin/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) files/$(ARCH)/v2ray-plugin_linux_$(BIN_ARCH) $(1)/usr/bin/v2ray-plugin
endef

$(eval $(call BuildPackage,v2ray-plugin))
