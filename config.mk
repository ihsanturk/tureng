# tureng version
VERSION = 0.0.1-alpha

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# libs
LIBS = -lcurses -lcurl
CFLAGS = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -nostartfiles
LDFLAGS = ${LIBS}
CC = cc
