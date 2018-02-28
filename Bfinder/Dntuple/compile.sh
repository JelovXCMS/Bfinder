#!/bin/sh

eval `scramv1 runtime -sh`
rm loop.exe
g++ loop.C $(root-config --cflags --libs) -Wall -O2 -o loop.exe

