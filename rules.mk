#
# rules.mk
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

.json-cut.json:
	$(AWK) 'p; /--8<----/ {p=1}' $< > $@

.sh-cut.sh-in:
	$(AWK) 'p; /--8<----/ {p=1}' $< > $@

# https://www.gnu.org/software/make/manual/html_node/Directory-Variables.html
# https://www.gnu.org/software/automake/manual/html_node/Uniform.html#index-pkgdatadir
# https://www.gnu.org/software/automake/manual/html_node/Basics-of-Distribution.html#index-PACKAGE
.sh-in.sh:
	sed \
	 -e 's,[@]prefix[@],$(prefix),g' \
	 -e 's,[@]exec_prefix[@],$(exec_prefix),g' \
	 -e 's,[@]bindir[@],$(bindir),g' \
	 -e 's,[@]sbindir[@],$(sbindir),g' \
	 -e 's,[@]libexecdir[@],$(libexecdir),g' \
	 -e 's,[@]datarootdir[@],$(datarootdir),g' \
	 -e 's,[@]datadir[@],$(datadir),g' \
	 -e 's,[@]sysconfdir[@],$(sysconfdir),g' \
	 -e 's,[@]sharedstatedir[@],$(sharedstatedir),g' \
	 -e 's,[@]localstatedir[@],$(localstatedir),g' \
	 -e 's,[@]runstatedir[@],$(runstatedir),g' \
	 -e 's,[@]pkgdatadir[@],$(pkgdatadir),g' \
	 -e 's,[@]PACKAGE[@],$(PACKAGE),g' \
	 -e 's,[@]VERSION[@],$(VERSION),g' \
	 $< > $@

.sh:
	cp $< $@

TESTS = $(dist_check_SCRIPTS)
