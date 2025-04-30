ARG VERSION="stable"

FROM plugfox/flutter:${VERSION} AS builder

RUN set -eux; flutter config --no-analytics --enable-web \
    && flutter precache --universal --web

COPY ./shared /shared
WORKDIR /build

SHELL [ "/bin/bash", "-c" ]
COPY ./frontend .
RUN flutter pub get && dart run build_runner build && flutter build web --dart-define=MODE=PROD --wasm

FROM python:3.12.2-alpine

COPY --from=builder /build/build/web /app

WORKDIR /app

CMD ["python", "-m", "http.server", "8081"]