# Contributing to GrantDecay

Thanks for considering a contribution. GrantDecay is an offline analyzer: it
reads entitlement exports and access logs and never executes anything.

## Development setup

- Python 3.11+. The package uses the standard library only.

```bash
python -m compileall -q src
python -m pytest -q
PYTHONPATH=src python -m grantdecay report --entitlements samples/entitlements.txt --log samples/accesslog.txt
```

## Before you open a pull request

1. Compile and the full test suite must pass.
2. Every new finding kind needs a fixture, a test and a paragraph in the README
   explaining what it should trigger.
3. Keep the package dependency-free.
