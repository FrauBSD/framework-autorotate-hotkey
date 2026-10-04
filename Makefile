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
# $FrauBSD: framework-autorotate-hotkey/Makefile 2026-10-04 14:18:27 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
BINDIR?=	${PREFIX}/bin
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

############################################################ FILES

BIN=		bin/auto-rotate-toggle
PLUG=		plugins.d/rotate

############################################################ TARGETS

.PHONY: install

install:
	mkdir -p ${DESTDIR}${BINDIR} ${DESTDIR}${PLUGDIR}
	install -m 755 ${BIN} ${DESTDIR}${BINDIR}
	install -m 644 ${PLUG} ${DESTDIR}${PLUGDIR}

################################################################################
# END
################################################################################
