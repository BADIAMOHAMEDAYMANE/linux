# Makefile to generate README.md and run the guessing game script

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Date and Time: $(date)" >> README.md
	echo "Lines of code in guessinggame.sh: $(wc -l < guessinggame.sh)" >> README.md
	echo "The guessing game asks the user how many files are in the current directory." >> README.md

run:
	bash guessinggame.sh
