#!/bin/sh

i=$#

while [ $i -gt 0 ]
do
  echo "$i: $(eval echo \$$i)"
  i=`expr $i - 1`
done

