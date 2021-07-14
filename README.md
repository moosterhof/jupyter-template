# Jupyter Notebook Template Project

This repository assumes Python virtual environments, packages from `pip` and `direnv` to activate these.
You could also use `conda` instead of `pip`, manual activation of the virtuale environment, etc.

Use your local package manager to install direnv:
```
brew install direnv
```

or:
```
nix-env -i direnv
```

Activate direnv and create your Python virtual environment:
```
direnv allow
```

Install the dependencies and enable the bash kernel:
```
pip install --upgrade pip setuptools wheel
pip install -r ./requirements.txt
python -m bash_kernel.install
```

Run Jupyter, any way you like or start it with:
```
make
```
