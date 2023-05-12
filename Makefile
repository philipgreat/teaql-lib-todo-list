all:
	echo "" >> models/logs.logs 
	git add -A ./
	git commit -m "trying update"
	git push
