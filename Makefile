prefix = /etc

all: src/99-usbtmc.rules

install: src/99-usbtmc.rules
	install -D src/* \
		-t $(DESTDIR)$(prefix)/udev/rules.d

uninstall:
	-rm -rf $(DESTDIR)$(prefix)/udev/rules.d/99-usbtmc.rules

.PHONY: all install uninstall
