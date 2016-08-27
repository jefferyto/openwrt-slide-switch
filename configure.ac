#
# configure.ac
# This file is part of slide-switch.
#
# Copyright (C) 2016 Jeffery To
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

# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([slide-switch], [0.9.0], [https://github.com/jefferyto/openwrt-slide-switch])
AM_INIT_AUTOMAKE

AC_COPYRIGHT([Copyright (C) 2016 Jeffery To])

# Checks for programs.
AC_PROG_AWK
if test -z "$AWK"; then
	AC_MSG_ERROR([awk is required])
fi

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_ARG_WITH([platform],
	[AS_HELP_STRING([--with-platform=BOARD], [support slide switches for this platform/board])])

AM_CONDITIONAL([PLATFORM_AR71XX], [test "x$with_platform" = xar71xx])
AM_CONDITIONAL([PLATFORM_RAMIPS], [test "x$with_platform" = xramips])

AC_CONFIG_FILES([
	Makefile
	src/etc/hotplug.d/button/Makefile
	src/etc/hotplug.d/button/50-slide-switch.cut
	src/etc/init.d/Makefile
	src/etc/init.d/slide-switch.cut
	src/usr/lib.ar71xx/Makefile
	src/usr/lib.ramips/Makefile
	src/usr/sbin/Makefile
	src/usr/sbin/slide-switch.cut
	src/usr/share/slide-switch/Makefile
	src/usr/share/slide-switch/functions.sh.cut
])

AC_OUTPUT
