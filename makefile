README.md: guessinggame.sh
	touch README.md
	echo "## The Unix Workbench Assignment" >> README.md
	echo "" >> README.md
	echo "- **Date: " `date` >> README.md
	echo "" >> README.md
	echo "- **Lines in guessinggame.sh: " `cat guessinggame.sh | wc -l`  >> README.md
