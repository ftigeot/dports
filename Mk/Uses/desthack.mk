#
# $FreeBSD: Mk/Uses/desthack.mk 341335 2014-01-27 08:14:30Z bapt $
#
# Handle gnu configure that does not properly support DESTDIR
#
# MAINTAINER:	portmgr@FreeBSD.org
#
# Feature:	desthack
# Usage:	USES=desthack
# Valide ARGS:	none
#

.if !defined(_INCLUDE_USES_DESTHACK_MK)
_INCLUDE_USES_DESTHACK_MK=	yes

.if defined(_desthack_ARGS)
IGNORE=	USES=desthack valide args are none or 'la'
.endif

GNU_CONFIGURE_PREFIX=	\$${${DESTDIRNAME}}${PREFIX}
GNU_CONFIGURE_MANPREFIX=	\$${${DESTDIRNAME}}${MANPREFIX}
.endif
