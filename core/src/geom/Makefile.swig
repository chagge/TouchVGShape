ROOTDIR  =../../..
PKGNAME  =touchvg
PROJNAME =geom

INCLUDES += -I$(ROOTDIR)/core/inc/geom

include $(ROOTDIR)/core/mk/config.mk
include $(ROOTDIR)/core/mk/Makefile.swig
