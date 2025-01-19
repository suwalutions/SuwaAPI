#!/bin/bash

cd /${USER_NAME}

python -m venv ${USER_NAME}venv
pip install --no-cache-dir -r requirements.txt

cd /${USER_NAME}/app
python -m uvicorn main:app --host 0.0.0.0 --port 8000

wait