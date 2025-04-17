#! /bin/bash
BASEDIR=$(dirname "$0")
gcc -c $BASEDIR/deps/ufbx.c -o $BASEDIR/deps/ufbx.o
ar r $BASEDIR/ufbx/ufbx.a $BASEDIR/deps/ufbx.o
rm $BASEDIR/deps/ufbx.o