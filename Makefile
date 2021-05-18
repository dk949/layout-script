include config.mk
all:

clean:

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin/
	install layout ${DESTDIR}${PREFIX}/bin/layout

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/layout

.PHONY: all clean install uninstall
