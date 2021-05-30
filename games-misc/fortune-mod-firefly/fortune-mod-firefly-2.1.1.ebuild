# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Quotes from FireFly"
HOMEPAGE="https://web.archive.org/web/20110102101157/http://www.daughtersoftiresias.org/progs/firefly/"
SRC_URI="https://web.archive.org/web/20110102101157/http://www.daughtersoftiresias.org/progs/firefly//${P/mod-}.tar.bz2"
S="${WORKDIR}"
LICENSE="fairuse"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-solaris"

RDEPEND="games-misc/fortune-mod"

src_install() {
	insinto /usr/share/fortune
	doins firefly firefly.dat
}