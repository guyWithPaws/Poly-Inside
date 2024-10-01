FROM ubuntu 

RUN curl https://func-e.io/install.sh | bash -s -- -b /usr/local/bin

COPY . .

CMD [ "/usr/local/bin/func-e", "run", "-c", "/etc/envoy/envoy.yaml" ]

