BRANCH=$(shell git branch --show-current)

all: 
	@git add .; git commit -m 'update'; git push origin $(BRANCH)
