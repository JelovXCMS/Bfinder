#!/bin/sh

for id in {6330965..6330981}
do

echo qdel $id
qdel $id
done
