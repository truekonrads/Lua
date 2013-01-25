SFX = 52
APPNAME = luac$(SFX)

SRC = luac.c

include lua_conf.inc

ifneq ($(findstring Win, $(TEC_SYSNAME)), )
  # In Windows, use the Static Libraries, overwrite the definitions in lua_conf.inc
  USE_DLL =
  LDIR = ../lib/$(TEC_UNAME)
  SRC += lua_simple.rc 
endif
