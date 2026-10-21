SHELL := /bin/bash
.PHONY: install run test clean clean-all

install:
	@echo "Nothing to install: single static page."

run:
	uv run python -m http.server 8000

test:
	node --check <(sed -n "/^<script>/,/^<\\/script>/p" index.html | sed "1d;\$$d")

clean:
	@true

clean-all: clean
