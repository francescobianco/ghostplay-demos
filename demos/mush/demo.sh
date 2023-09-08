#!/usr/bin/env bash

#ghostplay silent
ghostplay_custom_prompt() {
  printf '$ '
}
ghostplay_before_prompt_hook() {
  :
}
ghostplay_after_prompt_hook() {
  ghostplay_sleep 1
}
#ghostplay end

# Create a new demo package on your system
#
curl https://mush.javanile.org/demo | bash
