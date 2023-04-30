TERMUX_PKG_HOMEPAGE=https://www.kde.org/
TERMUX_PKG_DESCRIPTION="Utilities for core application functionality and accessing the OS (KDE)"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION=5.105.0
TERMUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${TERMUX_PKG_VERSION%.*}/kcoreaddons-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=915cd3ac5bb3963fe79a643d70f109a9aa198f97e6a2b5c72f09cd955238daa2
TERMUX_PKG_DEPENDS="libc++, qt5-qtbase, shared-mime-info"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt5-qtbase-cross-tools, qt5-qttools-cross-tools"

termux_step_post_massage() {
	# Check if `update_xdg_mimetypes()` is disabled:
	if [ -e "share/mime/mime.cache" ]; then
		termux_error_exit "MIME cache found in package. Please disable updating cache."
	fi
}
