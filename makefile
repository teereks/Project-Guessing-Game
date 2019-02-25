timestamp = $(shell date)
num_lines = $(shell wc -l < guessinggame.sh)

all: README.md

README.md:
	# The title of the project
	echo "# Project: Guessing Game" >>  README.md

	#The date and time at which make was run
	echo "**Make was run at:**" >> README.md
	echo "*$(timestamp)*\n" >> README.md

	#The number of lines of code contained in guessinggame.sh	
	echo "**Number of lines of code in guessinggame.sh:**" >> README.md
	echo "*$(num_lines)*" >> README.md

clean:
	rm README.md
