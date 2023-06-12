FROM python:3.9
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

COPY credentials.json .

ENV PORT=5000

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app
