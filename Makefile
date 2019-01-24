FFMPEG=/usr/local/ffmpeg
CC=gcc
CFLAGS=-g -I$(FFMPEG)/include
LDFLAGS = -L$(FFMPEG)/lib/ -lswscale -lswresample -lavformat -lavdevice -lavcodec -lavutil -lavfilter  -lm 
TARGETS=test
all: $(TARGETS)
	test:test.c
	    $(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) -std=c++11 
	     
clean:
	    rm -rf $(TARGETS)

