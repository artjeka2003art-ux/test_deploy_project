# Тестовый HTTP-сервис на FastAPI

Минимальный тестовый HTTP-сервис на FastAPI для деплоя в Kubernetes через GhostCMD.

## Описание

Простой сервис с двумя эндпоинтами:
- `GET /` - возвращает `{"message": "ok"}`
- `GET /health` - возвращает `{"status": "ok"}`

## Установка зависимостей

```bash
# Создание виртуального окружения
python -m venv venv

# Активация виртуального окружения
# Для Linux/macOS:
source venv/bin/activate
# Для Windows:
# venv\Scripts\activate

# Установка зависимостей
pip install -r requirements.txt
```

## Запуск сервиса

### Локальный запуск через Python:
```bash
python main.py
```

### Запуск через uvicorn:
```bash
uvicorn main:app --host 0.0.0.0 --port 8000
```

Сервис будет доступен по адресу: http://localhost:8000

## Запуск тестов

```bash
pytest
```

## Эндпоинты

- `GET /` - корневой эндпоинт
- `GET /health` - healthcheck эндпоинт
