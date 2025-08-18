.PHONY: lint test format run build

lint:
	ruff check .
	black --check .

format:
	black .

test:
	pytest -q

run:
	python -m src.main

build:
	docker build -t project-image:dev .
