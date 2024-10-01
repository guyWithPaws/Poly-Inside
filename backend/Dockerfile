FROM dart:stable AS build

WORKDIR /backend
COPY pubspec.* ./
COPY . .
RUN dart pub get

COPY ../shared /backend/shared

RUN dart compile exe bin/server.dart -o bin/server

EXPOSE 9090
CMD [ "./bin/server" ]