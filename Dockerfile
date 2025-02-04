FROM python:3.6-slim

#EXPOSE 5000

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY src /app/src
COPY tests /app/tests
WORKDIR /app

CMD python src/app.py