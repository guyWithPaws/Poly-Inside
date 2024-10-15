FROM dart:3.6.0-216.1.beta-sdk AS build

RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev

WORKDIR /backend
COPY pubspec.* ./

COPY . .
COPY db.sqlite /backend/db.sqlite

RUN dart pub get

RUN dart run build_runner build --delete-conflicting-outputs

RUN dart compile exe bin/server.dart -o bin/server

EXPOSE 9090
CMD [ "./bin/server" ]