
# Contributing

## Dev Setup
```bash
python -m venv .venv && source .venv/bin/activate
pip install -e .[dev]
pre-commit install
```

## Branch & Commit
- `main` is protected; use feature branches.
- Conventional Commits (feat, fix, docs, chore, refactor, test, perf).

## Testing
```bash
pytest -q
```

## PR Checklist
- [ ] Tests added/updated
- [ ] Docs updated
- [ ] CI green
