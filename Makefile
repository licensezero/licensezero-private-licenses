TIERS=solo team company enterprise

all: $(addsuffix .txt,$(TIERS))

%.txt: %.yml LICENSE.mustache
	mustache $^ > $@

.INTERMEDIATE: $(addsuffix .yml,$(TIERS))

solo.yml:
	echo "solo: yes" > $@

team.yml:
	echo "team: yes\nlimit: ____" > $@

company.yml:
	echo "company: yes\nlimit: ____" > $@

enterprise.yml:
	echo "enterprise: yes" > $@
