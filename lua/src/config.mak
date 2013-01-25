SFX = 52
LIBNAME = lua$(SFX)

SRC = lapi.c lcode.c ldebug.c ldo.c ldump.c lfunc.c lgc.c llex.c lmem.c \
	lobject.c lopcodes.c lparser.c lstate.c lstring.c ltable.c ltm.c \
	lundump.c lvm.c lzio.c lctype.c lbitlib.c \
	lauxlib.c lbaselib.c ldblib.c liolib.c lmathlib.c loslib.c ltablib.c \
	lstrlib.c loadlib.c linit.c lcorolib.c

include lua_conf.inc

ifneq ($(findstring dll, $(TEC_UNAME)), )
  SRC += lua_dll.rc 
endif
