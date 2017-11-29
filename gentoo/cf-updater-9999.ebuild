# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )

DESCRIPTION="Daemon to automatically update CloudFlare DNS records"
HOMEPAGE="https://github.com/cchildress/cf-updater"
SRC_URI="https://github.com/cchildress/cf-updater/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
