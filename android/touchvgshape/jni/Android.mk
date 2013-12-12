# Copyright (c) 2013, Zhang Yungui, https://github.com/rhcad/touchvg

LOCAL_PATH := $(call my-dir)
cflags     := -frtti -Wall -Wextra -Wno-unused-parameter

core_inc   := $(call my-dir)/../../../core/include
c_includes := $(core_inc) \
              $(core_inc)/canvas \
              $(core_inc)/geom \
              $(core_inc)/graph \
              $(core_inc)/jsonstorage \
              $(core_inc)/shape \
              $(core_inc)/storage \
              $(core_inc)/shapedoc \
              $(core_inc)/test
core_src   := ../../../core/src

geom_files := $(core_src)/geom/mgbase.cpp \
              $(core_src)/geom/mgbnd.cpp \
              $(core_src)/geom/mgbox.cpp \
              $(core_src)/geom/mgcurv.cpp \
              $(core_src)/geom/mglnrel.cpp \
              $(core_src)/geom/mgmat.cpp \
              $(core_src)/geom/mgnear.cpp \
              $(core_src)/geom/mgnearbz.cpp \
              $(core_src)/geom/mgvec.cpp

graph_files := $(core_src)/graph/gigraph.cpp \
              $(core_src)/graph/gipath.cpp \
              $(core_src)/graph/gixform.cpp

json_files := $(core_src)/jsonstorage/mgjsonstorage.cpp

shape_files := $(core_src)/shape/mgcomposite.cpp \
              $(core_src)/shape/mgellipse.cpp \
              $(core_src)/shape/mggrid.cpp \
              $(core_src)/shape/mgline.cpp \
              $(core_src)/shape/mglines.cpp \
              $(core_src)/shape/mgrdrect.cpp \
              $(core_src)/shape/mgrect.cpp \
              $(core_src)/shape/mgshape.cpp \
              $(core_src)/shape/mgshapes.cpp \
              $(core_src)/shape/mgsplines.cpp

doc_files  := $(core_src)/shapedoc/mgshapedoc.cpp \
              $(core_src)/shapedoc/mglayer.cpp \
              $(core_src)/shapedoc/mglockrw.cpp

test_files := $(core_src)/test/testcanvas.cpp \
              $(core_src)/test/RandomShape.cpp

include $(CLEAR_VARS)
LOCAL_MODULE     := libTouchVGShape
LOCAL_CFLAGS     := $(cflags)
LOCAL_C_INCLUDES := $(c_includes)
LOCAL_SRC_FILES  := $(geom_files) $(graph_files) $(shape_files) \
                    $(json_files) $(test_files) $(doc_files)
include $(BUILD_STATIC_LIBRARY)
