#
# Copyright (C) 2014-2017 The KunTeng ROM Team
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for ApFree WifiDog
LUCI_DEPENDS:=+apfree_wifidog
LUCI_PKGARCH:=all

include $(TOPDIR)/feeds/luci/luci.mk

$(eval $(call PackageDir,luciappapfreewifidog,luciappapfreewifidog,))
$(eval $(call PackageDir,luci-app-apfree-wifidog,luc
# call BuildPackage - OpenWrt buildroot signature
