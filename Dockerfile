# Используем официальный Python-образ
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем зависимости в контейнер
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь код приложения
COPY . .

# Открываем порт, который будет слушать Flask
EXPOSE 5000

# Команда для запуска приложения
CMD ["python", "app.py"]
