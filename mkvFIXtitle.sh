#!/bin/bash
for f in *.mkv; do ffmpeg -y -i "$f" -map 0 -c copy -metadata title="${f%.*}" "${f%.*}-metafixed.mkv"; done
