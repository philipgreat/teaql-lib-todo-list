

FIRST_LINE := $(shell head -1 models/main.xml)
VERSION := $(shell date +'%Y-%m-%dT%H-%M')

all:
	
	echo "" >> models/logs.logs 
	git add -A ./
	echo "${VERSION}"
	echo "${FIRST_LINE}"
	git commit -m "update to version: ${VERSION}"
	#git push
