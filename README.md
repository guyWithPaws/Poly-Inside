# Poly-Inside
Flutter-based Telegram Web App for educational purposes with gRPC backend

## TODO
Исправить:
- парсер
- лайки
- звездочки
- кеширование запросов
- передача данных между экранами через BuildContext (сразу закроем проблему с обновлением данных)
- Update/Delete Review - пока ошибки
- Почему пустой ReviewID - ПЕРВООЧЕРЕДНОЕ!!!
- Редактирование профиля пользователя
- Навести красоту (экраны загрузки, ошибок)
- Бэкап данных
- Продумать систему логгирования

## Flutter Reinstalling
- Pavel -2
- Goxa -3
- Arseniy - 2

### Notes for Devs
Чтобы подключится к текущей сессии с рабочей версией проекта - вводить команду
```
tmux attach -t server
```
Запуск сервера: перейти в папку проекта, ввести команду
```
python3 server.py
```
