# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

KEYWORDS="~amd64"

DESCRIPTION="Utility to use Clang compiler system-wide"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	sys-devel/clang:${PV}
	!sys-devel/gcc
"

src_unpack() {
	mkdir ${S}
}

src_install() {
	dosym ${EPREFIX}/usr/lib/llvm/${PV}/bin/clang-${PV} ${EPREFIX}/usr/bin/cc
	dosym ${EPREFIX}/usr/lib/llvm/${PV}/bin/clang++-${PV} ${EPREFIX}/usr/bin/c++
	dosym ${EPREFIX}/usr/lib/llvm/${PV}/bin/clang-cpp-${PV} ${EPREFIX}/usr/bin/cpp
	dosym ${EPREFIX}/usr/lib/llvm/${PV}/bin/clang-${PV} ${EPREFIX}/usr/bin/${CHOST}-cc
	dosym ${EPREFIX}/usr/lib/llvm/${PV}/bin/clang++-${PV} ${EPREFIX}/usr/bin/${CHOST}-c++
	dosym ${EPREFIX}/usr/lib/llvm/${PV}/bin/clang-cpp-${PV} ${EPREFIX}/usr/bin/${CHOST}-cpp
}
