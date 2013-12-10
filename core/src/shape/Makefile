ROOTDIR     =../../..
TARGET      =libshape.a
SRCS        =$(wildcard *.cpp)
OBJS        =$(SRCS:.cpp=.o)
INSTALL_DIR ?=$(ROOTDIR)/build

CPPFLAGS    += -Wall \
               -I$(ROOTDIR)/core/inc \
               -I$(ROOTDIR)/core/inc/geom \
               -I$(ROOTDIR)/core/inc/graph \
               -I$(ROOTDIR)/core/inc/shape \
               -I$(ROOTDIR)/core/inc/storage

all:        $(TARGET)
$(TARGET):  $(OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJS)

clean:
	@rm -rfv *.o *.a
ifdef touch
	@touch -c *
endif

install:
	@test -d $(INSTALL_DIR) || mkdir $(INSTALL_DIR)
	@! test -e $(TARGET) || cp -v $(TARGET) $(INSTALL_DIR)
