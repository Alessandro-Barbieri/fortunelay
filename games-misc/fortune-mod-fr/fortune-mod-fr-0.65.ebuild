# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="French fortunes cookies"
HOMEPAGE="https://tracker.debian.org/pkg/fortunes-fr"
SRC_URI="mirror://debian/pool/main/f/fortunes-fr/fortunes-fr_0.65+nmu3_all.deb"
S="${WORKDIR}"
LICENSE="GFDL-1.1+ fairuse public-domain"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 s390 sparc x86"

RDEPEND="games-misc/fortune-mod"

src_unpack() {
	default
	tar -xJf data.tar.xz || die
}

src_install() {
	insinto /usr/share/fortune/fr
	doins -r usr/share/games/fortunes-fr/.
	doins -r usr/share/games/fortunes/fr/.
}