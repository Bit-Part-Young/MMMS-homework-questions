BRANCH=$(shell git branch --show-current)

all:
	@./update_readme_md

update:
	@git add .; git commit -m 'update README.md'; git push origin $(BRANCH)
