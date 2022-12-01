TERMUX_PKG_HOMEPAGE=https://github.com/fcitx/xcb-imdkit
TERMUX_PKG_DESCRIPTION="An implementation of xim protocol in xcb"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.0.4
TERMUX_PKG_SRCURL=https://github.com/fcitx/xcb-imdkit/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=43ca9e8c32b954c74f857a8bb3ef5259c5f0f15aaae88e55256c862730c15d39
TERMUX_PKG_DEPENDS="libxcb, xcb-util"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, uthash, xcb-util-keysyms"

