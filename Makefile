# w3mepub - text-based EPUB reader
# See LICENSE file for copyright and license details.
.POSIX:

# Adjust $confdir in w3mepub if you change PREFIX
PREFIX = /usr/local

clean:
	rm -f less.conf

install:
	lesskey -o less.conf lesskey
	mkdir -p $(PREFIX)/bin $(PREFIX)/share/w3mepub
	cp -f w3mepub $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/w3mepub
	cp -f *.conf *.xsl $(PREFIX)/share/w3mepub
	chmod 644 $(PREFIX)/share/w3mepub/*

uninstall:
	rm -f $(PREFIX)/bin/w3mepub
	rm -f $(PREFIX)/share/w3mepub/*

.PHONY: clean install uninstall
