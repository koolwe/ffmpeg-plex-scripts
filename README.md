# ffmpeg-plex-scripts

All scripts are charged to maintain quality of videos i.e. by using '-crf 0' flag

AC3toAAC.sh converts AC3 audio to AAC. Edit the script to change extension of files you want to process. Does not run recursively.
EAC3toAC3.sh converts EAC3 audio to AAC. Edit the script to change extension of files you want to process. Does not run recursively.
mkvFIXtitle.sh Fixes Metadata by copying Filename to Metadata Title for videos in a folder. This helps plex to identify the videos and download relevant metadata. Edit the script to change extension of files you want to process.

[fixVID]

I was trying to find a script which would recursively find errors in my media files on my plex server and fix them. But nothing, so i wrote my own mini script. Feel free to use and modify.
Tested on Ubuntu 16.04

Requirements:
ffmpeg including ffprobe
run 'sudo apt-get install ffmpeg' to install

Usage (without '):
'sudo chmod u+x fixVID'
'sudo ./fixVID'

1. A mini script to recursively search folders for a certain file type. Edit the script to change that from *.mkv to any supported video format.
2. The script uses ffprobe to find errors in the file.
3. If errors are found it'll run ffmpeg to re-convert & fix that file. It than saves the file in the same folder with -fixed.mkv name.
4. After that it deletes the original file.
