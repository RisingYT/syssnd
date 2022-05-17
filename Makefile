PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to add system sounds.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p start $(DESTDIR)$(PREFIX)/bin/start
	@cp -p lgoutshdn $(DESTDIR)$(PREFIX)/bin/lgoutshdn
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/start
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/lgoutshdn

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/start
	@rm -rf $(DESTDIR)$(PREFIX)/bin/lgoutshdn
