FROM ubuntu 

RUN apt-get update && apt-get install -y curl

RUN curl https://func-e.io/install.sh | bash -s -- -b /usr/local/bin

RUN ls -l /usr/local/bin/func-e

COPY envoy.yaml /etc/envoy/envoy.yaml

CMD [ "/usr/local/bin/func-e", "run", "-c", "/etc/envoy/envoy.yaml" ]

