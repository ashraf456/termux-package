TERMUX_PKG_HOMEPAGE=https://github.com/tsujan/FeatherNotes
TERMUX_PKG_DESCRIPTION="Lightweight Qt Notes-Manager for Linux"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="Yisus7u7 <dev.yisus@hotmail.com>"
TERMUX_PKG_VERSION=1.1.0
TERMUX_PKG_SRCURL=https://github.com/tsujan/FeatherNotes/archive/refs/tags/V${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=dda68fd112e452c67a9a79c8bd10911f4dcb32bafe4ceb9b752c3f7bbf25470a
TERMUX_PKG_DEPENDS="hunspell, libc++, libx11, qt5-qtbase, qt5-qtsvg, qt5-qtx11extras"
TERMUX_PKG_RECOMMENDS="hicolor-icon-theme"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools, qt5-qttools-cross-tools"

