ifeq ($(MAKESERVER),1)
$(error Please do not specify MAKESERVER=1)
endif

XKBDATADIR=$(MHMAKECONF)\xorg-server\xkbdata

$(XKBDATADIR):
	mkdir -p $(XKBDATADIR)
	bash ./build.sh

SUBDIRS = compat geometry keycodes symbols types

load_makefile $(SUBDIRS:%=%\makefile MAKESERVER=0 DEBUG=$(DEBUG);)

$(SUBDIRS:%=%\all): $(DESTDIR)

all: $(SUBDIRS:%=%\all)
