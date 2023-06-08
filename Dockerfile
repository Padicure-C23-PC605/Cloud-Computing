FROM python:3.10
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

COPY credentials.json .

ENV PORT=5000

CMD ["python", "app.py"]