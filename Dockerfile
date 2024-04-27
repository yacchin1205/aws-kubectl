FROM amazon/aws-cli:latest

ARG kubectl_version=v1.23.17

RUN cd /tmp \
    && curl -LO "https://dl.k8s.io/release/${kubectl_version}/bin/linux/amd64/kubectl" \
    && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

ENTRYPOINT bash