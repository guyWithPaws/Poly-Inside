FROM dart:stable as builder

COPY ./shared/lib /shared/lib
COPY ./shared/protobuf /shared/protobuf
COPY ./shared/pubspec.yaml /shared/pubspec.yaml

WORKDIR /backend
COPY ./backend .

RUN dart pub get && \
     dart run build_runner build --delete-conflicting-outputs && \
     dart compile exe bin/server.dart -o bin/server && \
     rm -rf /backend/.dart_tool /backend/pubspec.lock

FROM alpine

COPY --from=builder /backend/bin/server /bin/server

EXPOSE 9090
CMD [ "./bin/server" ]