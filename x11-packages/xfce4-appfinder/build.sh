TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/xfce/xfce4-appfinder/start
TERMUX_PKG_DESCRIPTION="Application launcher and finder"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
_MAJOR_VERSION=4.17
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.2
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/xfce/xfce4-appfinder/${_MAJOR_VERSION}/xfce4-appfinder-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=cb65fe83b2fa936697d4215474bd77d81677aa3e373ec9c62f30a2675df8390b
TERMUX_PKG_DEPENDS="garcon, gdk-pixbuf, gtk3, libcairo, libxfce4ui, libxfce4util, xfconf"

