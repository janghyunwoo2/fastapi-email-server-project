FROM python:3.9-slim-buster as build

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install --upgrade pip setuptools wheel

RUN pip install -r requirements.txt

COPY . /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
# FROM python:3
# WORKDIR /app
# COPY . .
# RUN python3 -m pip install --upgrade pip
# RUN python3 -m pip install --no-cache-dir -r requirements.txt
# ENV FLASK_APP=mypython.py
# ENV FLASK_ENV=development
# ENV FLASK_RUN_HOST=0.0.0.0
# EXPOSE 5000
# CMD ["flask", "run"]