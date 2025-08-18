# PROJECT_NAME

Starter template for a production-ready Python service repo. Use this as a **Template repository**,
then rename `PROJECT_NAME` and go build something useful.

## Features
- Python 3.11
- CI with lint (ruff), format check (black), tests (pytest)
- Docker build & push to GHCR on `main`
- Dependabot for actions + pip
- Issue + PR templates
- CODEOWNERS
- Security policy
- Pre-commit config (optional, recommended)
- Makefile for common tasks

## Quick start
```bash
python -m venv .venv && . .venv/Scripts/activate  # Windows
pip install -r requirements.txt -r requirements-dev.txt
pre-commit install
pytest -q
```

## Local commands
```bash
make lint     # ruff + black --check
make test     # pytest
make run      # python -m src.main
make build    # docker build .
```

## Branch strategy
- `main` is protected. Merge by Pull Request (squash).
- Create feature branches: `feature/<name>`
- Release by tagging: `vX.Y.Z`
