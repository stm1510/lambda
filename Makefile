setup:
        python3 -m venv ~/.udacity

install:
        pip install --upgrade pip && pip install -r requirements.txt

lint :
        hadolint Dockerfile
        pylint --disbale=R,C,W1203 app.py 

all : install lint test
