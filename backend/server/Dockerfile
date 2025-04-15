FROM dart:stable AS builder

COPY ./shared/lib /shared/lib
COPY ./shared/protobuf /shared/protobuf
COPY ./shared/pubspec.yaml /shared/pubspec.yaml

WORKDIR /server
COPY ./backend/server .
COPY ./backend/common .

RUN dart pub get && \
     dart run build_runner build --delete-conflicting-outputs && \
     dart compile exe bin/server.dart -o bin/server && \
     rm -rf /backend/.dart_tool /backend/pubspec.lock

FROM alpine:latest

RUN apk add --no-cache libc6-compat
COPY --from=builder /server/bin/server /bin/server
COPY --from=builder /server/.env /.env

EXPOSE 9090
CMD [ "/bin/server" ]