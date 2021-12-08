# Copyright 2021 Aisha Tammy
# Distributed under the terms of the ISC License

EAPI=7

DESCRIPTION="fully programmable wayland compositor"
HOMEPAGE="https://github.com/buffet/kiwmi"

inherit meson git-r3

EGIT_REPO_URI="https://github.com/buffet/kiwmi"
KEYWORDS="~amd64"

LICENSE="MPL-2.0"
SLOT="0"

RDEPEND="
	gui-libs/wlroots
	dev-lang/luajit
	x11-misc/xkeyboard-config
"

BDEPEND="
	${RDEPEND}
	>=dev-libs/wayland-protocols-1.14
	virtual/pkgconfig
"

S="${WORKDIR}"/${PN}-9999

src_configure() {
	local emesonargs=(
		-Dlua-pkg=luajit
	)
	meson_src_configure
}
