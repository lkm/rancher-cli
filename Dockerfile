FROM gliderlabs/alpine:3.4

ENV RANCHER_CLI_VERSION 0.1.0-rc3

ADD https://github.com/rancher/cli/releases/download/v0.1.0-rc3/rancher-linux-amd64-v${RANCHER_CLI_VERSION}.tar.gz /tmp/

RUN \
  cd /tmp && \
  tar xvfz rancher-linux-amd64-v${RANCHER_CLI_VERSION}.tar.gz && \
  cp rancher-v${RANCHER_CLI_VERSION}/rancher /usr/bin/rancher && \
  rm -rf rancher* && \
  chmod +x /usr/bin/rancher

ENTRYPOINT ["rancher"]
CMD ["help"]