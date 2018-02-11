# The first target in a Makefile will be executed by default when we call make.
# The order of the targets does not matter.
# Shell commands must be indented with a tab.
# Add an @ sign to suppress output of the command that is executed.
# If target isn't a file you want to build, please add .PHONY <target> at the end of the build step. Common phony targets are: clean, install, run,...

CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=$(wildcard *.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)

clean:
	-rm *.o hello

.PHONY: clean

