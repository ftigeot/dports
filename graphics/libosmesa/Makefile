# Created by: gahr
# $FreeBSD$

PORTNAME=	libosmesa
PORTVERSION=	${MESAVERSION}
CATEGORIES=	graphics

COMMENT=	Off-Screen Mesa implementation of the OpenGL API

USE_XORG=	xorgproto

.include <bsd.port.options.mk>
.include "${.CURDIR:H:H}/graphics/mesa/Makefile.common"

MESON_ARGS=		-Ddri-drivers="" -Dgallium-drivers=swrast -Dvulkan-drivers="" \
			-Degl=false -Dgbm=false -Dgles2=false \
			-Dosmesa=gallium

BUILD_DEPENDS+=		${LOCALBASE}/libdata/pkgconfig/libdrm.pc:graphics/libdrm

post-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKSRC}/include/GL/osmesa.h \
		${STAGEDIR}${PREFIX}/include/GL

.include <bsd.port.post.mk>
