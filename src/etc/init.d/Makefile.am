#
# src/etc/init.d/Makefile.am
# This file is part of slide-switch.
#
# Copyright (C) 2016-2019, 2022 The slide-switch authors
# https://github.com/jefferyto/openwrt-slide-switch
#
# slide-switch is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# version 2 as published by the Free Software Foundation.
#
# slide-switch is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with slide-switch.  If not, see <http://www.gnu.org/licenses/>.
#

initddir = $(sysconfdir)/init.d
initd_SCRIPTS = slide-switch zzz-slide-switch-update
dist_check_SCRIPTS = check-shell-syntax

CLEANFILES = $(initd_SCRIPTS)
EXTRA_DIST = $(initd_SCRIPTS:=.sh-cut)

include $(top_srcdir)/rules.mk
