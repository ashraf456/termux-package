TERMUX_PKG_HOMEPAGE=https://geth.ethereum.org/
TERMUX_PKG_DESCRIPTION="Go implementation of the Ethereum protocol"
TERMUX_PKG_LICENSE="LGPL-3.0, GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.14.4"
TERMUX_PKG_SRCURL=https://github.com/ethereum/go-ethereum/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=10d96bfdf7cd4291dc559691a54b672e1eb28444b52e163fc78ee54116a7d333
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_SUGGESTS="geth-utils"

termux_step_make() {
	termux_setup_golang

	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "${GOPATH}"/src/github.com/ethereum
	ln -sf "$TERMUX_PKG_SRCDIR" "$GOPATH"/src/github.com/ethereum/go-ethereum

	cd "$GOPATH"/src/github.com/ethereum/go-ethereum
	for applet in abidump abigen bootnode clef devp2p ethkey evm geth p2psim rlpdump; do
		go -C ./cmd/"$applet" build -v
	done
	unset applet
}

termux_step_make_install() {
	for applet in abidump abigen bootnode clef devp2p ethkey evm geth p2psim rlpdump; do
		install -Dm700 \
			"$TERMUX_PKG_SRCDIR/cmd/$applet/$applet" \
			"$TERMUX_PREFIX"/bin/
	done
	unset applet
}
