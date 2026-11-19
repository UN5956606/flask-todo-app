FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 7345

CMD ["sh", "-c", "flask --app manage db upgrade && python manage.py"]