FROM python:3.7-alphine
LABEL key="Akshay kumar Arasavalli"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user