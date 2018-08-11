README.md: guessinggame.sh
	echo "Home Work Cousera - created on $$(date +%D)" >> README.md
	echo "This file contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
