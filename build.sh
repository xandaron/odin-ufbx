#! /bin/bash
BASEDIR=$(dirname "$0")
clang -c $BASEDIR/deps/ufbx.c -o $BASEDIR/deps/ufbx.o -O3 -D"UFBX_REAL_IS_FLOAT"="1"
ar r $BASEDIR/ufbx/ufbx.a $BASEDIR/deps/ufbx.o
rm $BASEDIR/deps/ufbx.o