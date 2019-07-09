#!/bin/bash

for i in `seq -f '%02g' 1 $1`;
do
  vagrant halt node$i
done
