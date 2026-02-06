PY ?= python

.PHONY: test lint smoke

test:
	$(PY) -m pytest -q

lint:
	$(PY) -m compileall -q src

smoke:
	PYTHONPATH=src $(PY) -m grantdecay report --entitlements samples/entitlements.txt --log samples/accesslog.txt

<!-- draft note 1636 -->
