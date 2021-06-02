
.PHONY: all
all: start

.PHONY: start
start:
	jupyter notebook  --browser='open %s'

.PHONY: install
install:
	direnv allow .
	pip install -r ./requirements.txt
	python -m bash_kernel.install

.PHONY: upgrade
upgrade:
	pur
	pip install --upgrade -r ./requirements.txt

.PHONY: clean
clean:
	echo

.PHONY: lint
lint:
	yamllint .github
