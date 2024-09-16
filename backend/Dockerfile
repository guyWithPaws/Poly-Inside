FROM dart:stable AS build

WORKDIR /backend
COPY pubspec.* ./
RUN dart pub get

RUN dart compile exe bin/server.dart -o bin/server

EXPOSE 9090
CMD [ "./bin/server" ]
