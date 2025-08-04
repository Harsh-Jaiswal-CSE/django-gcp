FROM python:3.11-slim
WORKDIR /app
COPY . .
ENV PYTHONUNBUFFERED=1
RUN pip install --upgrade pip && pip install -r requirements.txt
CMD ["gunicorn", "helloworld.wsgi:application", "--bind", "0.0.0.0:8000"]
