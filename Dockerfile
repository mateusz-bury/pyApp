FROM python:3.12.8-alpine3.20

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache -r requirements.txt 

COPY . . 

EXPOSE 5000

CMD ["python", "main.py"]