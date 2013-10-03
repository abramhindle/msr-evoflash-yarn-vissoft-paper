#!/bin/sh
D=`date +"%Y%m%d%H%M"`
D=`date +"%Y%m%d"`
V=`cat VERSION`
NV=`expr 1 + $V`
echo $NV > VERSION
METH=yarn.${V}.${D}.pdf
#METH=yarn.${V}.pdf
cp msr-evoflash.pdf $METH
vex $METH
attach $METH
echo `pwd`/$METH
