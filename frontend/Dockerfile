ARG VERSION="stable"

FROM plugfox/flutter:${VERSION} as builder

# Setup flutter tools for web developement
RUN set -eux; flutter config --no-analytics --enable-web \
    && flutter precache --universal --web

# Add lables
LABEL name="plugfox/flutter:${VERSION}-web" \
    description="Alpine with flutter & dart for web" \
    flutter.channel="${VERSION}" \
    flutter.version="${VERSION}"

# By default
# USER root
COPY ./shared /shared
WORKDIR /build
SHELL [ "/bin/bash", "-c" ]
COPY ./frontend .
RUN flutter pub get && flutter build web

# test ngrok
FROM python:3.9-slim

COPY --from=builder /build/build/web /app

WORKDIR /app

CMD ["python", "-m", "http.server", "8081"]