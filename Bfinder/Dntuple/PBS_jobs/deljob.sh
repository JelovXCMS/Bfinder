#!/bin/sh

for id in {6204388..6204534}
do

echo qdel $id
qdel $id
done
