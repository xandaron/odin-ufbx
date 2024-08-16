#! /bin/bash
BASEDIR=$(dirname "$0")
gcc -c $BASEDIR/ufbx.c
ar r $BASEDIR/ufbx/ufbx.a $BASEDIR/ufbx.o
rm $BASEDIR/ufbx.o