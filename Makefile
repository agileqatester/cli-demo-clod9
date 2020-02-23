install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	python -m pytest -vv --cov=cli test_gcli.py
lint:
	pylint --disable=R,C cli.py
deploy:
	#deploy here
all: install lint test deploy
