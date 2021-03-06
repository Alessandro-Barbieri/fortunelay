# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Fortune database of quotes from forums.gentoo.org"
HOMEPAGE="https://forums.gentoo.org"
SRC_URI="
	mirror://gentoo/gentoo-forums-${PV}.gz
	offensive? ( mirror://gentoo/gentoo-forums-offensive-${PV}.gz )
"
S="${WORKDIR}"
LICENSE="GPL-2 fairuse"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-solaris"
IUSE="offensive"

DEPEND="games-misc/fortune-mod"
RDEPEND="${DEPEND}"

src_compile() {
	mv "gentoo-forums-${PV}" gentoo-forums || die
	strfile gentoo-forums || die
	if use offensive; then
		mv "gentoo-forums-offensive-${PV}" gentoo-forums-offensive
		strfile gentoo-forums-offensive || die
	fi
}

src_install() {
	insinto /usr/share/fortune
	doins gentoo-forums gentoo-forums.dat
	if use offensive; then
		insinto /usr/share/fortune/off
		doins gentoo-forums-offensive gentoo-forums-offensive.dat
	fi
}
