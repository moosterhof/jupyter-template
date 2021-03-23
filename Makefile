
.PHONY: all
all: start

.PHONY: start
start:
	jupyter notebook  --browser='open %s'

.PHONY: install
install:
	pip install -r ./requirements.txt

.PHONY: upgrade
upgrade:
	pur
	pip install --upgrade -r ./requirements.txt

.PHONY: clean
clean:
	echo

