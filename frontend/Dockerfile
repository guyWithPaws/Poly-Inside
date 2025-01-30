FROM debian:buster-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback python3 && \
    apt-get clean

ENV DEBIAN_FRONTEND=dialog
ENV PUB_HOSTED_URL=https://pub.flutter-io.cn
ENV FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# download Flutter SDK from Flutter Github repo
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

# Set flutter environment path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

RUN flutter config --no-enable-android && \
    flutter config --no-enable-ios && \
    flutter config --no-enable-windows && \
    flutter config --no-enable-linux

RUN rm -rf /usr/local/flutter/bin/cache/artifacts/engine/android-arm-release && \
    rm -rf /usr/local/flutter/bin/cache/artifacts/engine/android-arm64-release && \
    rm -rf /usr/local/flutter/bin/cache/artifacts/engine/android-x64-release && \
    rm -rf /usr/local/flutter/bin/cache/artifacts/engine/windows-x64-release

RUN flutter doctor

# Copy files to container and build
# RUN mkdir /app/
# COPY . /app/
# WORKDIR /app/
# RUN flutter build web

# Record the exposed port
EXPOSE 9000

# make server startup script executable and start the web server
# RUN ["chmod", "+x", "/app/server/server.sh"]

# ENTRYPOINT [ "/app/server/server.sh"]