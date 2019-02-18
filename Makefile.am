#
# Makefile.am
# This file is part of slide-switch.
#
# Copyright (C) 2016-2019 The slide-switch authors
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

if PLATFORM_AR71XX
LIB_AR71XX = src/usr/lib.ar71xx
endif

if PLATFORM_RAMIPS
LIB_RAMIPS = src/usr/lib.ramips
endif

SUBDIRS = src/etc/hotplug.d/button \
	src/etc/init.d \
	$(LIB_AR71XX) \
	$(LIB_RAMIPS) \
	src/usr/sbin \
	src/usr/share/slide-switch
