# Created by: Eric Anholt <anholt@FreeBSD.org>

PORTNAME=	mesa
PORTVERSION=	${MESAVERSION}
CATEGORIES=	graphics

COMMENT=	Mesa OpenGL libraries and hardware acceleration drivers

LICENSE=	MIT

USE_XORG=	xorgproto x11 xdamage xext xfixes xshmfence xv xvmc

LIB_DEPENDS+=		libwayland-client.so:graphics/wayland

# zrj: justdoitTM will avoid installing llvmX0 for all Xorg ports.
STATIC_LLVM=yes

.include <bsd.port.options.mk>
.include "${.CURDIR:H:H}/graphics/mesa/Makefile.common"

BUILD_DEPENDS+=		${PYTHON_PKGNAMEPREFIX}mako>0:textproc/py-mako@${PY_FLAVOR}

.include "${MASTERDIR}/Makefile.targets"

post-install:
	@${RM} -r ${STAGEDIR}/etc/OpenCL

.include <bsd.port.post.mk>
