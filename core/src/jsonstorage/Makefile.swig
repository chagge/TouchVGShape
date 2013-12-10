ROOTDIR  =../../..
PKGNAME  =touchvg
PROJNAME =jsonstorage

INCLUDES += -I$(ROOTDIR)/core/inc \
            -I$(ROOTDIR)/core/inc/storage \
            -I$(ROOTDIR)/core/inc/jsonstorage \
            -I..

SOURCES   =$(wildcard *.cpp)

include $(ROOTDIR)/core/mk/config.mk
include $(ROOTDIR)/core/mk/Makefile.swig
