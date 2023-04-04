TERMUX_PKG_HOMEPAGE=https://lxqt.github.io
TERMUX_PKG_DESCRIPTION="OpenBox window manager configuration tool"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION="0.16.2"
TERMUX_PKG_SRCURL="https://github.com/lxqt/obconf-qt/releases/download/${TERMUX_PKG_VERSION}/obconf-qt-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=7328da1606b289280e2ce0f2279ab30d06f584e4c2d6fc5f01c0f3d9ce714960
TERMUX_PKG_DEPENDS="libc++, qt5-qtbase, qt5-qtx11extras, glib, openbox, liblxqt, hicolor-icon-theme"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
TERMUX_PKG_AUTO_UPDATE=true
