FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc libpq-dev


WORKDIR /app


COPY requirements.txt/ /app/
RUN pip install  -r requirements.txt


COPY . /app/

EXPOSE 8000
