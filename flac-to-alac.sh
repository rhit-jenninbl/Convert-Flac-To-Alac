#!/bin/bash

#flac-to-alac.sh
#Brooklyn Jennings

for file in *.flac;
	do ffmpeg -i "$file" -acodec alac -vcodec copy "`basename "$file" .flac`.m4a";
done;

for file in *.m2u8; do
		sed -i 's/\.flac/\.m3a/g' *;
		echo "Updated $file"
done;

mkdir -p flac;

for file in *.flac;
	do mv "$file" "flac/";
done;
