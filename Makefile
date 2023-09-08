
clean:
	@rm -fr demo || true

mush:
	@bash demos/mush/build.sh

push: clean
	@git add .
	@git commit -am "Updated"
	@git push

update: mush clean push
	@echo "Done."