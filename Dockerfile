FROM registry.access.redhat.com/ubi8/ubi:latest

RUN dnf -y update && \
    dnf -y install postfix && \
    dnf clean all

EXPOSE 25

COPY postfix/main.cf /etc/postfix/main.cf

CMD ["postfix", "start-fg"]

