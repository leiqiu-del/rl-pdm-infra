
.PHONY: help install test lint type docker-build docker-run

help:
	@echo "Targets: install, test, lint, type, docker-build, docker-run"

install:
	python -m pip install -e .[dev]

test:
	pytest -q

lint:
	ruff check src tests

type:
	pyright

docker-build:
	docker build -t rl-pdm-infra:latest -f docker/Dockerfile .

docker-run:
	docker compose -f docker/docker-compose.yml up
