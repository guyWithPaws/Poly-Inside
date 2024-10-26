FROM dart:3.6.0-216.1.beta-sdk AS build

WORKDIR /frontend
COPY pubspec.* ./

COPY . .

RUN dart pub get

RUN dart run build_runner build --delete-conflicting-outputs

RUN dart compile exe bin/server.dart -o bin/server

