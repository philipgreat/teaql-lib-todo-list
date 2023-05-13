

FIRST_LINE := $(shell head -1 models/main.xml)
#VERSION := $(shell date +'%Y-%m-%dT%H-%M')
#VERSION := $(shell   awk -F'version=' '{print $2}' <<< ${FIRST_LINE}  )

VERSION := $(shell )


all:
	
	@head -1 models/main.xml > models/logs.logs 
	git add -A ./
	cat models/logs.logs  | awk -F'"' '{print $$6}' >> current.version
	#@echo "$(shell cat current.version)"
	git commit -m "update to version: $(shell cat current.version)"
	#git push
