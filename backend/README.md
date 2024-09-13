# Best and the only app with Polytech professors reviews PolyInside
This project is a unique WebApp, that allows you to view reviews on professors/write your own reviews.

# WebApp Pages:
+ main page with professors list
+ page with reviews on concrete professor
+ review creation page
+ user profile page 

# Notes for devs:
+ ГЕНЕРИТЬ СНАЧАЛА gRPC, А ПОТОМ Drift 
+ КЛАССЫ ДРИФТА БЕРУТСЯ ИЗ gRPC
+ id юзеров - Telegramm id + текущая дата в UNIX
+ нужны тестики как минимум для Validator'a
+ парсер преподов можно переписать на dart 
+ покрытие gRPC сервиса тестами + покрытие тестами базы данных
+ gRPC interceptors - добавить для отслеживания ошибок
+ предусмотреть миграцию базы в случае изменения 
+ добавить Sentry (?)