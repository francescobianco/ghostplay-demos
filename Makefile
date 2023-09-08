

mush:
	@bash demos/mush/build.sh

push:
	@git add .
	@git commit -am "Updated"
	@git push