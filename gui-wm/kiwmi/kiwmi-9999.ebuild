# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LUA_COMPAT=( lua5-{1..4} luajit )

inherit git-r3 lua-single meson

DESCRIPTION="fully programmable wayland compositor"
HOMEPAGE="https://github.com/buffet/kiwmi"
EGIT_REPO_URI="https://github.com/buffet/kiwmi"
KEYWORDS="~amd64"
IUSE=""

REQUIRED_USE="${LUA_REQUIRED_USE}"

LICENSE="MPL-2.0"
SLOT="0"

RDEPEND="${LUA_DEPS}
	>=gui-libs/wlroots-0.15.0
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
	-Dlua-pkg=${ELUA}
	)
	meson_src_configure
}
