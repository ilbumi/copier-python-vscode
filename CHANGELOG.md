# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

<!-- insertion marker -->
## [1.2.2](https://github.com/ilbumi/copier-python-vscode/releases/tag/1.2.2) - 2024-02-03

<small>[Compare with the previous version](https://github.com/ilbumi/copier-python-vscode/compare/1.2.1...1.2.2)</small>

### Minor fixes and refactoring

- Move linting and formatting configs from `config` to `.devconfig`
- Remove `python3.9`
- Remove unused features

## [1.2.1](https://github.com/ilbumi/copier-python-vscode/releases/tag/1.2.1) - 2024-02-03

<small>[Compare with the previous version](https://github.com/ilbumi/copier-python-vscode/compare/1.2.0...1.2.1)</small>

### Features

- Fix deprecation warning in `roff.toml`
- Add mypy pre-commit hook

## [1.2.0](https://github.com/ilbumi/copier-python-vscode/releases/tag/1.2.0) - 2024-02-03

<small>[Compare with the previous version](https://github.com/ilbumi/copier-python-vscode/compare/1.0.0...1.2.0)</small>

### Features

- Remove local pre-commit hooks, as they were too slow
- Add proper venv reusing in nox sessions
- Update documentation

## [1.0.0](https://github.com/ilbumi/copier-python-vscode/releases/tag/1.0.0) - 2023-08-20

<small>[Compare with the previous version](https://github.com/ilbumi/copier-python-vscode/compare/0.1.0...1.0.0)</small>

### Features

- Add pre-commit hooks
- Add VSCode Dev Containers support
- Add semi-automatic changelog generation


## [0.1.0](https://github.com/ilbumi/copier-python-vscode/releases/tag/0.1.0) - 2023-08-20

<small>[Compare with first commit](https://github.com/ilbumi/copier-python-vscode/compare/946c697f571f5a4e7c0df91c70607b3c931e8157...0.1.0)</small>

### Features

- Add PDM project config
- Add basic static code analysis (ruff, bandit, safety)
- Add basic formatting (black, ssort, isort)
- Add basic tests (pytest, coverage)
- Add basic GitHub Workflows
- Add nox as a task runner
- Add LICENSE generation
