.PHONY: run test migrate

run:
	pipenv run python mr_roboto.py

test:
	pipenv run pytest -v -x -p no:warnings --cov-report term-missing --cov=./

migrate:
	pipenv run alembic upgrade head
