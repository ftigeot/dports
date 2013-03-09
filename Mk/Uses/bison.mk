# $FreeBSD: Mk/Uses/bison.mk 313675 2013-03-08 22:17:53Z bapt $
#
# handle dependency on the bison port
#
# MAINTAINER: portmgr@FreeBSD.org
#
# Feature:	bison
# Usage:	USES=bison or USES=bison:ARGS
# Valid ARGS	build (default, implicit), run, both
#
#
.if !defined(_INCLUDE_BISON_MK)
_INCLUDE_BISON_MK=	yes

_BISON_DEPENDS=	bison:${PORTSDIR}/devel/bison

.if !defined(bison_ARGS)
bison_ARGS=	build
.endif

.if ${bison_ARGS} == "build"
BUILD_DEPENDS+=	${_BISON_DEPENDS}
.elif ${bison_ARGS} == "run"
RUN_DEPENDS+=	${_BISON_DEPENDS}
.elif ${bison_ARGS} == "both"
BUILD_DEPENDS+=	${_BISON_DEPENDS}
RUN_DEPENDS+=	${_BISON_DEPENDS}
.else
IGNORE=	USES=bison - invalid args: [${bison_ARGS}] specifed
.endif

.endif
