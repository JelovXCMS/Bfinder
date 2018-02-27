#!/bin/sh

for id in {6195683..6196065}
do

echo qdel $id
qdel $id
done
