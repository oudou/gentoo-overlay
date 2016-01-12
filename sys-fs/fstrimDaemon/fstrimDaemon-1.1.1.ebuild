# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Very lightweight daemon executing fstrim every few hours."
HOMEPAGE="https://github.com/dobek/fstrimDaemon"
SRC_URI="https://github.com/dobek/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

src_install() {
    dosbin usr/sbin/fstrimDaemon.sh
    doconfd etc/conf.d/fstrimDaemon
    doinitd etc/init.d/fstrimDaemon
    dodoc README.md
}
