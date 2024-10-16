#!/usr/bin/env bash

files=$(ls -a | grep -E '^\.[^.]+' | grep -v .git)
fileRoot=$(pwd)

for file in $(echo $files); do
	ln -s $fileRoot/$file ~/$file
done	
