# Nuitka-Wheel
At the time of writing (11 November 2023) [Nuitka](https://github.com/Nuitka/Nuitka) doesn't produce useful pyi files to allow proper typehints and docstrings in their packages.
This project builds a simple maths project into a wheel, compiling it using Nuitka.

Stubgen, part of [mypy](https://github.com/python/mypy), is used to generate proper pyi files for the project. In 
[pyproject.toml](pyproject.toml), Nuitka's own pyi generation is disabled,
and instead stubgen's pyi files are added as package data.

Running [build.bat](build.bat) generates the pyi files and builds the wheel file using the pyproject.toml specifications.

## Requirements
Install uv
```
pipx install uv
```
Build a venv with requirements
```
uv sync
```

## Build the wheel
```
build.bat
```
