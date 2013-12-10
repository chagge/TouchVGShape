ROOTDIR  =../../..
PKGNAME  =touchvg
PROJNAME =shape

INCLUDES += -I$(ROOTDIR)/core/inc \
            -I$(ROOTDIR)/core/inc/geom \
            -I$(ROOTDIR)/core/inc/graph \
            -I$(ROOTDIR)/core/inc/canvas \
            -I$(ROOTDIR)/core/inc/shape \
            -I$(ROOTDIR)/core/inc/storage

SOURCES   =$(wildcard *.cpp) \
           $(wildcard ../geom/*.cpp) \
           $(wildcard ../graph/*.cpp)

include $(ROOTDIR)/core/mk/config.mk
include $(ROOTDIR)/core/mk/Makefile.swig
