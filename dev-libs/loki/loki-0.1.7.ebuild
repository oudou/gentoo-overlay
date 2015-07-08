# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Loki is a C++ library of designs, containing flexible implementations of common design patterns and idioms."
HOMEPAGE="http://loki-lib.sourceforge.net/"
SRC_URI="mirror://sourceforge/loki-lib/${P}.zip"
LICENSE="MIT"
SLOT="0"

KEYWORDS="~x86 ~amd64"

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i -e "s|prefix := /usr|prefix := ${D}/usr|" Makefile.common
}
