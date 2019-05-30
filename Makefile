# tureng interactive cli dictionary

include config.mk

SRC = tureng.c
OBJ = ${SRC:.c=.o}

all: options tureng

options:
	@echo tureng build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} $<

${OBJ}: config.mk

tureng: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f tureng ${OBJ} tureng-${VERSION}.tar.gz

dist: clean
	mkdir -p tureng-${VERSION}
	cp -R Makefile config.mk ${SRC} tureng-${VERSION}
	tar -cf tureng-${VERSION}.tar tureng-${VERSION}
	gzip tureng-${VERSION}.tar
	rm -rf tureng-${VERSION}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f tureng ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/tureng
	mkdir -p ${DESTDIR}${MANPREFIX}/bin/man1
	sed "s/VERSION/${VERSION}/g" < tureng.1 > ${DESTDIR}${MANPREFIX}/man1/tureng.1
	chmod 644 ${DESTDIR}${MANPREFIX}/man1/tureng.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/tureng\
		${DESTDIR}${MANPREFIX}/man1/tureng.1

.PHONY: all options clean install uninstall
