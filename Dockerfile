FROM python:3.10

ENV PYTHONUNBUFFERED 1

RUN apt update && apt upgrade -y

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

WORKDIR .

COPY . .


CMD ["python", "app.py"]
