FROM alpine:latest

RUN apk add --no-cache sqlite

# Создаем директорию для базы данных
RUN mkdir /db

# # Копируем файл базы данных в контейнер
# COPY db.sqlite /db/db.sqlite

# Указываем рабочую директорию
WORKDIR /db

# Команда для запуска контейнера (опционально)
CMD ["sqlite3", "/db/db.sqlite"]