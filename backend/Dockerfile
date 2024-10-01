FROM dart:stable AS build

RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev

WORKDIR /backend
COPY pubspec.* ./

COPY . .
COPY db.sqlite /backend/db.sqlite

RUN dart pub get

RUN dart compile exe bin/server.dart -o bin/server

EXPOSE 9090
CMD [ "./bin/server" ]