ROOTDIR  =../../..
PKGNAME  =touchvg
PROJNAME =graph

INCLUDES += -I$(ROOTDIR)/core/inc/geom \
            -I$(ROOTDIR)/core/inc/graph \
            -I$(ROOTDIR)/core/inc/canvas

SOURCES   =$(wildcard *.cpp) \
           $(wildcard ../geom/*.cpp)

include $(ROOTDIR)/core/mk/config.mk
include $(ROOTDIR)/core/mk/Makefile.swig
