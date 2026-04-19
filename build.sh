#!/bin/bash

cd src

if [ -d "../build" ] ; then
    echo "Build directory exists."
else
    echo "Build directory does not exist."
    echo "Creating build directory."
    mkdir ../build
fi

echo "Assembling..."
ca65 -o ../build/main.o main.s
echo "Linking..."
ld65 -C ../apple-1.cfg -o ../build/a1-ux ../build/main.o

cd ../
echo "Done!"

