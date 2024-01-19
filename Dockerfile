FROM python:3.12-alpine

COPY requirements.txt /temp/requirements.txt
COPY backend /backend
WORKDIR /backend
EXPOSE 8000

RUN apk add libpq-dev

RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password dj-user

#RUN !pip install importlib-metadata==4.13.0


USER dj-user