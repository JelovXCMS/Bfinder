#!/bin/sh

for id in {11820108..11820139}
do

echo qdel $id
qdel $id
done
