#!/bin/bash
set -e

## Settings
demo_dir=demos/mush
demo_width=80
demo_height=25
demo_script="curl -sL git.io/ghostplay | bash -s ${demo_dir}/demo.sh"

## Clean-up
rm -fr demo && true

## Record demo script
asciinema rec --overwrite -c "${demo_script}" "${demo_dir}/demo.0.cast"

## Amends the cast file
sed -e 's/"width": [0-9]*,/"width": 80,/' \
    -e 's/"height": [0-9]*,/"height": 25,/' \
    -e 's/\[sudo\] password for .*:/[sudo\] password for user:/' \
    \
    "${demo_dir}/demo.0.cast" > "${demo_dir}/demo.1.cast"

## Generate the gif file
docker run --rm -w /data -v $PWD:/data:rw asciinema2/asciicast2gif \
    -w 80 -h 25 -s 2 -t solarized-dark "${demo_dir}/demo.1.cast" "${demo_dir}/demo.gif"


