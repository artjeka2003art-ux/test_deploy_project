FROM python:3.11-slim

WORKDIR /app

# Сначала копируем requirements.txt
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Потом копируем весь код приложения
COPY . .

# Запускаем FastAPI через uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]