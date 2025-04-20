FROM debian:buster-slim

RUN apt update && apt install -y curl && \
    curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
    | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && \
    echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
    | tee /etc/apt/sources.list.d/ngrok.list && \
    apt update && apt install -y ngrok

# yup i khow it's bad to do that...
RUN ngrok config add-authtoken 2vMEMFBW7YY6cR7SW5ffeWckMud_6kwV7igwkY8KUuj5aaHyY

CMD ["ngrok", "http", "--url=infinite-cow-hip.ngrok-free.app", "nginx:80"]