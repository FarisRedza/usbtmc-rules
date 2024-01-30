NAME = usbtmc-rules
VERSION = 0.1
UDEV_DIR = etc/udev/rules.d/
PKG_NAME = $(NAME)_$(VERSION)-1_all.deb

deb_package:
	mkdir -p PKG_SOURCE/$(UDEV_DIR)/
	cp -r debian PKG_SOURCE/DEBIAN
	cp -r src/* PKG_SOURCE/$(UDEV_DIR)/
	dpkg-deb --root-owner-group --build PKG_SOURCE $(PKG_NAME)
	rm -r PKG_SOURCE