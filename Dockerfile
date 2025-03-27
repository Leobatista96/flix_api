FROM python:3.12-slim

WORKDIR /flix-api

COPY . .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN python manage.py migrate

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBEFFERED 1

EXPOSE 8001

CMD python manage.py runserver 0.0.0.0:8001