


VERSION := $(shell date +'%Y-%m-%dT%H:%M')

all:
	
	echo "" >> models/logs.logs 
	git add -A ./
	echo "${VERSION}"
	git commit -m "${VERSION}"
	#git push
