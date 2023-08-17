# Copier VSCode Template

[Copier](https://github.com/copier-org/copier) template
for Python projects.

This copier template is mainly for my own usage, but feel free to use it as you wish.

The template is heavily inspired by [Pawamoy's Copier PDM](https://github.com/pawamoy/copier-pdm/tree/main).

## Features

### Existing features

### Planned Features

- VSCode Dev Containers as development environments
- [PDM](https://github.com/pdm-project/pdm) setup, with pre-defined `pyproject.toml`
- Documentation built with [MkDocs](https://github.com/mkdocs/mkdocs)
  ([Material theme](https://github.com/squidfunk/mkdocs-material)
  and "autodoc" [mkdocstrings plugin](https://github.com/mkdocstrings/mkdocstrings))
- Pre-configured tools for code formatting, quality analysis and testing:
  - [black](https://github.com/psf/black),
  - [blacken-docs](https://github.com/adamchainz/blacken-docs),
  - [ssort](https://github.com/bwhmather/ssort),
  - [ruff](https://github.com/charliermarsh/ruff),
  - [mypy](https://github.com/python/mypy),
  - [safety](https://github.com/pyupio/safety)
- Tests run with [pytest](https://github.com/pytest-dev/pytest) and plugins, with [coverage](https://github.com/nedbat/coveragepy) support
- [Nox](https://github.com/wntrblm/nox) as task runner
- Python 3.9 or above
- Auto-generated `CHANGELOG.md` from git commits
- All licenses from [choosealicense.com](https://choosealicense.com/appendix/)
- Makefile for convenience
- Support for GitHub workflows and GitLab CI/CD

## Quick setup and usage

### Requirements

### Starting a project

```bash
copier copy "https://github.com/ilbumi/copier-python-vscode.git" /path/to/your/new/project
```

Or even shorter:

```bash
copier copy "gh:ilbumi/copier-python-vscode" /path/to/your/new/project
```
