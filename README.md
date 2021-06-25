# Jupyter Notebook Template Project

Use your local package manger to install direnv:

```brew install direnv```

or:

```nix-env -i direnv```

Activate direnv and create your Python virtual environment

```direnv allow .```

Install the dependencies and enable the bash kernel:

```pip install --upgrade pip setuptools wheel```
```pip install -r ./requirements.txt```
```python -m bash_kernel.install```

Run Jupyter, any way you like or start it with:

```make```



