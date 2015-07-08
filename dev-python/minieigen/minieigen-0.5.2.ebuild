# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="A small wrapper for core parts of EIgen, c++ library for linear algebra."
HOMEPAGE="https://launchpad.net/minieigen"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-cpp/eigen"

python_prepare_all() {
	sed -i -e 's|libraries=\[\x27boost_python-py3.*|libraries=\[\x27boost_python-%d.%d\x27 % sys.version_info\[0:2\]\]|' setup.py
	distutils-r1_python_prepare_all
}