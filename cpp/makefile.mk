ROOT = C:/msys64/home/waterhorse/barnes_Hut/Barnes-hut/cpp
OBJ_DIR = $(ROOT)/Object
INC_DIR = $(ROOT)/inc
SRC_DIR = $(ROOT)/src

SRC_FILES = \
$(ROOT)/src/barnesHut.cc \
$(ROOT)/src/geometries.cc \
$(ROOT)/src/graphicEngine.cc \
$(ROOT)/src/runSim.cc

_OBJ = \
runSim.o \
barnesHut.o \
geometries.o \
graphicEngine.o
OBJ = $(patsubst %,$(OBJ_DIR)/%,$(_OBJ))

_DEPS = \
barnesHut.h \
geometries.h \
graphicEngine.h
DEPS = $(patsubst %,$(INC_DIR)/%,$(_DEPS))

GCC = g++
CFLAGS = -c -g -I$(INC_DIR)
CPPFLAGS = -g -I$(INC_DIR)
 
RM = rm -rf

INCLUDES = \
-I$(SIMULATION_DIR)/inc \
-I$(GRAPHICS_DIR)/inc


$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cc $(DEPS)
	$(GCC) -o $@ $< $(CFLAGS)

make: $(OBJ)
	$(GCC) -o $@.exe $^ $(CPPFLAGS)

.PHONY: clean

clean:
	$(RM) $(OBJ_DIR)/*.o