#!/bin/sh -ex

INPUT="$1"

# Web video is an utter disaster. A fractal of incompatibility.
# Basically unusable. A very abridged version is that browsers
# effectively support only the yuv420p colorspace (whether with
# VP8 or H.264), and we have videos in the rgb colorspace, and
# in order to not lose chroma information to subsampling we have
# to upsample the video itself first. Also, half of the browsers
# supports only H.264, and a few others supports only WebM,
# so we're stuck converting and serving everything twice.

UPSAMPLE="-vf scale=iw*2:ih*2 -pix_fmt yuv420p \
  -sws_flags full_chroma_inp+full_chroma_int+bitexact+neighbor"
WEBM="-c:v libvpx -crf:v 25"
H264="-c:v libx264 -profile:v main -preset slow -crf:v 23"

ffmpeg -y -i ${INPUT} ${UPSAMPLE} ${WEBM} ${INPUT%.*}.webm
ffmpeg -y -i ${INPUT} ${UPSAMPLE} ${H264} ${INPUT%.*}.mp4
