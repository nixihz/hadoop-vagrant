#!/bin/bash

for i in `seq -f '%02g' 1 5`;
do
  vagrant up node$i
done
