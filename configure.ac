#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([slide-switch], [0.9.0], [https://github.com/jefferyto/openwrt-slide-switch])
AM_INIT_AUTOMAKE

# Checks for programs.

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
	src/etc/hotplug.d/button/50-slide-switch
	src/etc/init.d/Makefile
	src/etc/init.d/slide-switch
	src/usr/lib.ar71xx/Makefile
	src/usr/lib.ramips/Makefile
	src/usr/sbin/Makefile
	src/usr/sbin/slide-switch
	src/usr/share/slide-switch/Makefile
	src/usr/share/slide-switch/functions.sh
])

AC_OUTPUT
