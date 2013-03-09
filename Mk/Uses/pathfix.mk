# $FreeBSD: Mk/Uses/pathfix.mk 313652 2013-03-08 15:04:18Z bapt $
#
# Lookup in Makefile.in and configure for common incorrect paths and set them
# to respect FreeBSD hier
#
# MAINTAINER: portmgr@FreeBSD.org
#
# Feature:	pathfix
# Usage:	USES=pathfix
# Valid ARGS	does not require args
#
#
.if !defined(_INCLUDE_PATHFIX_MK)
_INCLUDE_PATHFIX_MK=	yes

.if defined(pathfix_ARGS)
IGNORE=	USES=pathfix does not require args
.endif

PATHFIX_MAKEFILEIN?=	Makefile.in

pre-patch: pathfix-pre-patch

pathfix-pre-patch:
	@${FIND} ${WRKSRC} -name "${PATHFIX_MAKEFILEIN}" -type f | ${XARGS} ${REINPLACE_CMD} -e \
		's|[(]libdir[)]/locale|(prefix)/share/locale|g ; \
		s|[(]libdir[)]/pkgconfig|(prefix)/libdata/pkgconfig|g ; \
		s|[(]datadir[)]/pkgconfig|(prefix)/libdata/pkgconfig|g ; \
		s|[(]prefix[)]/lib/pkgconfig|(prefix)/libdata/pkgconfig|g ; \
		s|[$$][(]localstatedir[)]/scrollkeeper|${SCROLLKEEPER_DIR}|g ; \
			s|[(]libdir[)]/bonobo/servers|(prefix)/libdata/bonobo/servers|g' ; \
	${FIND} ${WRKSRC} -name "configure" -type f | ${XARGS} ${REINPLACE_CMD} -e \
		's|DATADIRNAME=lib|DATADIRNAME=share|g ; \
		s|{libdir}/locale|{prefix}/share/locale|g'

.endif
