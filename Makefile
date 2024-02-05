NAME = usbtmc-rules
VERSION = 0.1
PKG_VERSION = 1
ARCH = all
PKG_NAME = $(NAME)_$(VERSION)-$(PKG_VERSION)_$(ARCH).deb

UDEV_DIR = etc/udev/rules.d/

deb_package:
	mkdir -p PKG_SOURCE
	cp -r debian PKG_SOURCE/DEBIAN

	mkdir -p PKG_SOURCE/$(UDEV_DIR)/
	cp -r src/* PKG_SOURCE/$(UDEV_DIR)
	
	dpkg-deb --root-owner-group --build PKG_SOURCE $(PKG_NAME)
	rm -r PKG_SOURCE