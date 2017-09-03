all: solo.txt team.txt company.txt enterprise.txt

%.txt: %.yml LICENSE.mustache
	mustache $^ > $@
