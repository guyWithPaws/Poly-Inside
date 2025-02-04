FROM dart:stable as builder

WORKDIR /parser

COPY ../../pubspec.*/ ./ ./

RUN dart pub get && \
    dart run build_runner build --delete-conflicting-outputs && \
    dart compile exe bin/server.dart -o bin/server && \
    rm -rf /backend/.dart_tool /backend/pubspec.lock


FROM debian:buster-slim

RUN  apt-get update \
    && apt-get install -y --no-install-recommends sqlite3 libsqlite3-dev wget gnupg ca-certificates procps libxss1 xvfb \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y --no-install-recommends google-chrome-stable curl unzip sed git bash xz-utils libglvnd0 ssh xauth x11-xserver-utils libpulse0 libxcomposite1 libgl1-mesa-glx sudo \
    && rm -rf /var/lib/{apt,dpkg,cache,log} \
    && wget --quiet https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh -O /usr/sbin/wait-for-it.sh \
    && chmod +x /usr/sbin/wait-for-it.sh \
    && rm -rf /var/lib/apt/lists/*

ENV CHROME_FORCE_NO_SANDBOX=true

COPY --from=builder /parser/bin/server /bin/parser

CMD [ "./bin/parser" ]