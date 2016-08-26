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
