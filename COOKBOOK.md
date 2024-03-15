# Cookbook

A set of guides to achieve your goal.

## Installing PyTorch

Add specific version of PyTorch to dependencies in `pyproject.toml`:

```toml
[project]
dependencies = [
    ...
    "torch==2.0.1",
    ...
]
```

Then add source with the desired CUDA version to the same file:

```toml
[[tool.pdm.source]]
type = "find_links"
url = "https://download.pytorch.org/whl/cu117/torch_stable.html"
name = "torch"
```
