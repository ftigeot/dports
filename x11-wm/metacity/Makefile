# Created by: Garrett Rooney <rooneg@electricjellyfish.net>
# $FreeBSD$

PORTNAME=	metacity
PORTVERSION=	3.18.3
PORTREVISION=	2
CATEGORIES=	x11-wm
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome3

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Window manager for the adult in you

BUILD_DEPENDS=	zenity>=3.0.0:x11/zenity \
		itstool:textproc/itstool \
		gsettings-desktop-schemas>=3.3.0:devel/gsettings-desktop-schemas
LIB_DEPENDS=	libstartup-notification-1.so:x11/startup-notification \
		libgtop-2.0.so:devel/libgtop \
		libcanberra-gtk3.so:audio/libcanberra-gtk3
RUN_DEPENDS=	zenity>=3.0.0:x11/zenity \
		gsettings-desktop-schemas>=3.3.0:devel/gsettings-desktop-schemas

PORTSCOUT=	limitw:1,even

USES=		compiler:c11 gettext gmake gnome libtool \
		localbase pathfix pkgconfig tar:xz xorg
GNU_CONFIGURE=	yes
USE_XORG=	x11 xcomposite xdamage xrender xcursor xinerama xext xrandr
USE_GNOME=	gnomeprefix gtk30 intlhack libxml2:build
USE_LDCONFIG=	yes
INSTALL_TARGET=	install-strip

GLIB_SCHEMAS=	org.gnome.metacity.gschema.xml

.include <bsd.port.mk>
