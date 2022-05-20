FROM python:3.7
ENV PYTHONUNBUFFERED=1

USER root
RUN apt-get update
RUN pip install --upgrade pip 

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt