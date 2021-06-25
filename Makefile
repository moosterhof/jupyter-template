.PHONY: all
all: start

.PHONY: start
start:
	jupyter notebook  --browser='open %s'

.PHONY:
direnv:
	[ ! -z "${DIRENV_DIR}" ] || echo Please activate direnv by typing "direnv allow ." && exit 1

.PHONY: install
install:
	pip install --upgrade pip setuptools wheel
	pip install -r ./requirements.txt
	python -m bash_kernel.install

.PHONY: upgrade
upgrade:
	pur
	pip install --upgrade -r ./requirements.txt

.PHONY: clean
clean:
	find . -name '*.ipynb' | xargs -P 6 -n 1 jupyter nbconvert --clear-output --inplace

.PHONY: lint
lint:
	yamllint .github
