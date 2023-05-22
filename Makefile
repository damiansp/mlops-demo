install:
	pip3 install --upgrade pip && pip install -r requirements.txt

test:
	python -m pytest -vv ./*.py

format:
	black *.py

lint:
	pyflakes *.py

all:
	install lint test
