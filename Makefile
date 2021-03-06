# The first target in a Makefile will be executed by default when we call make.
# The order of the targets does not matter.
# Shell commands must be indented with a tab.
# Add an @ sign to suppress output of the command that is executed.
# If target isn't a file you want to build, please add .PHONY <target> at the end of the build step. Common phony targets are: clean, install, run,...

CC=g++
CFLAGS=-Wall
LDFLAGS=
HEADERS=$(wildcard *.h)
SOURCES_WITH_HEADERS=$(SOURCES:.h=.cpp)
SOURCES=$(wildcard *.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello

.SUFFIXES:

all: $(EXECUTABLE)

$(EXECUTABLE) : $(OBJECTS)
	$(CC) -o $(EXECUTABLE) $(OBJECTS)

%.o:%.cpp %.h
	@echo cpp file with header
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@

%.o:%.cpp
	@echo cpp file without header
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@


clean:
	-rm *.o hello

.PHONY: clean

