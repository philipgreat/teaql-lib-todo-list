all:
	echo "" >> models/logs.logs 
	git add -A ./
	git commit -m "update to $(head -1 models/main.xml |awk -F '"' '{print $6}')"
	git push
