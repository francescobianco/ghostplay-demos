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
ghostplay_before_type_hook() {
  ghostplay_sleep 0.05
}
#ghostplay end


## Create a new 'demo' package on your system
curl -s https://mush.javanile.org/new | bash -s demo


#ghostplay silent
sleep 3
echo -e "\n\n"
#ghostplay end
## Then go into project directory
cd demo


#ghostplay silent
sleep 3
echo -e "\n\n"
#ghostplay end
## Explore project's files
tree .
cat src/main.sh


#ghostplay silent
sleep 3
echo -e "\n\n"
#ghostplay end
## Build the project
./bin/mush build


#ghostplay silent
sleep 3
echo -e "\n\n"
#ghostplay end
## Run the project
./bin/mush run


#ghostplay silent
sleep 10
#ghostplay end
