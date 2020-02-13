#!/bin/bash
for f in *.mkv; do ffmpeg -y -i "$f" -map 0 -c:v copy -c:s copy -c:a ac3 -b:a 640k "${f%.*}-ac3.mkv"; done
