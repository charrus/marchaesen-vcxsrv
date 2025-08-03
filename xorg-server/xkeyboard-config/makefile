ifeq ($(MAKESERVER),1)
$(error Please do not specify MAKESERVER=1)
endif

DESTDIR=$(MHMAKECONF)\xorg-server\xkbdata

SUBDIRS = compat geometry keycodes symbols types

load_makefile $(SUBDIRS:%=%\makefile MAKESERVER=0 DEBUG=$(DEBUG);)

all: $(SUBDIRS:%=%\all)

$(SUBDIRS:%=%\all): $(DESTDIR)

XKBDATADIR=$(DESTDIR)

$(XKBDATADIR):
	mkdir -p $(XKBDATADIR)
	bash ./build.sh
	copy ..\xkbdata\rules\base ..\xkbdata\rules\xorg
	copy ..\xkbdata\rules\base.xml ..\xkbdata\rules\xorg.xml
	copy ..\xkbdata\rules\base.lst ..\xkbdata\rules\xorg.lst

