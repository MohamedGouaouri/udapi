FROM python:latest

WORKDIR /app

RUN pip install "fastapi[all]"

COPY . /app

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "80"]


