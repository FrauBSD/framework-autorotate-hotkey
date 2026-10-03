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
# $FrauBSD: framework-autorotate-hotkey/Makefile 2026-10-04 12:17:11 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

############################################################ FILES

PLUG=		plugins.d/rotate

############################################################ TARGETS

.PHONY: install

install:
	mkdir -p ${DESTDIR}${PLUGDIR}
	install -m 644 ${PLUG} ${DESTDIR}${PLUGDIR}

################################################################################
# END
################################################################################
