ARG VERSION="stable"

FROM plugfox/flutter:${VERSION} as builder

RUN set -eux; flutter config --no-analytics --enable-web \
    && flutter precache --universal --web

COPY ./shared /shared
WORKDIR /build

SHELL [ "/bin/bash", "-c" ]
COPY ./frontend .
RUN flutter pub get && flutter build web --wasm

FROM python:3.9-slim

COPY --from=builder /build/build/web /app

WORKDIR /app

CMD ["python", "-m", "http.server", "8081"]