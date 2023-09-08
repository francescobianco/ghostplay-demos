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

##
# Create a new 'demo' package on your system
##
curl -s https://mush.javanile.org/new | bash -s demo
#ghostplay silent
sleep 3
#ghostplay end

# Then go into project directory
#ghostplay silent
sleep 1
#ghostplay end
cd demo
#ghostplay silent
sleep 1
#ghostplay end

#
# Run the MAGIC!
#
# just type:  vintage run qbasic
#
#ghostplay silent
sleep 3
#ghostplay end
./bin/mush build
#ghostplay silent
sleep 3
#ghostplay end

#
# Run the MAGIC!
#
# just type:  vintage run qbasic
#
#ghostplay silent
sleep 3
#ghostplay end
./bin/mush run
#ghostplay silent
sleep 3
#ghostplay end
