#!/bin/bash
for f in *.mkv; do ffmpeg -y -i "$f" -map 0:a:0? -strict -2 -crf 0 -c:v copy -c:s copy -c:a aac -b:a 400k "${f%.*}-aac.mkv"; done
