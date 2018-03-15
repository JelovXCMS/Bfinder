#!/bin/sh

for id in {6240585..6240736}
do

echo qdel $id
qdel $id
done
