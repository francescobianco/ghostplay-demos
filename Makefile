
install:
	apt install asciinema

clean:
	@rm -fr demo || true

build-mush:
	@bash demos/mush/build.sh

push: clean
	@git add .
	@git commit -am "Updated"
	@git push

update: mush clean push
	@echo "Done."