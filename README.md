# Copier VSCode Template

[Copier](https://github.com/copier-org/copier) template
for Python projects.

This copier template is mainly for my own usage, but feel free to use it as you wish.

The template is heavily inspired by [Pawamoy's Copier PDM](https://github.com/pawamoy/copier-pdm/tree/main).

## Features

### Existing features

- Python 3.9 or above
- [PDM](https://github.com/pdm-project/pdm) setup, with pre-defined `pyproject.toml`
- Pre-configured tools for code formatting, quality analysis and testing:
  - [black](https://github.com/psf/black),
  - [ruff](https://github.com/charliermarsh/ruff),
  - [mypy](https://github.com/python/mypy),
  - [safety](https://github.com/pyupio/safety)
  - [ssort](https://github.com/bwhmather/ssort),
  - [coverage](https://github.com/nedbat/coveragepy)
- Tests run with [pytest](https://github.com/pytest-dev/pytest) and plugins
- [Nox](https://github.com/wntrblm/nox) as task runner
- All licenses from [choosealicense.com](https://choosealicense.com/appendix/)
- Support for GitHub workflows

### Planned Features

- VSCode Dev Containers as development environments
- Documentation built with [MkDocs](https://github.com/mkdocs/mkdocs)
  ([Material theme](https://github.com/squidfunk/mkdocs-material)
  and "autodoc" [mkdocstrings plugin](https://github.com/mkdocstrings/mkdocstrings))
- Pre-configured tools for code formatting, quality analysis and testing:
  - [blacken-docs](https://github.com/adamchainz/blacken-docs), support for tests
- Auto-generated `CHANGELOG.md` from git commits
- Support for GitLab CI/CD

## Quick setup and usage

### Requirements

You need `git`, `copier`, `copier-templates-extensions`, and `pdm` installed in order to use this template.

### Starting a project

```bash
copier copy --trust "https://github.com/ilbumi/copier-python-vscode.git" /path/to/your/new/project
```

Or even shorter:

```bash
copier copy --trust "gh:ilbumi/copier-python-vscode" /path/to/your/new/project
```

### Working with the generated project

Use PDM to manage dependencies:

```bash
pdm lock -v -G full-dev
pdm install -v -G full-dev
```

Run tasks with Nox:

```bash
pdm run nox -e check_safety
pdm run nox -e lint
```

Install your project as a python package:

```bash
pip install -U git+https://yourgit.example/project
```
