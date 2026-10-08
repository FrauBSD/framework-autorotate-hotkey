############################################################ LICENSE
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2026 Devin Teske <dteske@FreeBSD.org>
#
############################################################ IDENT(1)
#
# $Title: framework-autorotate-hotkey - Super+R rotate $
# $Copyright: 2026 Devin Teske. All rights reserved. $
# $FrauBSD: framework-autorotate-hotkey/Makefile 2026-10-07 20:32:10 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
BINDIR?=	${PREFIX}/bin
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d
MANDIR?=	${PREFIX}/share/man/man1

############################################################ FILES

INSCRIPTS=	bin/auto-rotate-toggle \
		bin/auto-rotate-enable \
		bin/auto-rotate-disable
BINS=		${INSCRIPTS} \
		bin/auto-rotate-osd
PLUG=		plugins.d/rotate
MAN1=		auto-rotate-toggle \
		auto-rotate-enable \
		auto-rotate-disable \
		auto-rotate-osd

############################################################ TARGETS

.PHONY: all

all: ${INSCRIPTS}

.for script in ${INSCRIPTS}
${script}: ${script}.in Makefile
	sed -e 's|@PREFIX@|${PREFIX}|g' ${script}.in > ${script}
	chmod 755 ${script}
.endfor

.PHONY: install

install: all
	mkdir -p ${DESTDIR}${BINDIR} ${DESTDIR}${PLUGDIR} \
	    ${DESTDIR}${MANDIR}
	install -m 755 ${BINS} ${DESTDIR}${BINDIR}
	install -m 644 ${PLUG} ${DESTDIR}${PLUGDIR}
.for m in ${MAN1}
	gzip -cn man/${m}.1 > ${DESTDIR}${MANDIR}/${m}.1.gz
	chmod 444 ${DESTDIR}${MANDIR}/${m}.1.gz
.endfor

.PHONY: clean

clean:
	rm -f ${INSCRIPTS}

################################################################################
# END
################################################################################
