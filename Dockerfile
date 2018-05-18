FROM buildkite/agent:3.1.2

RUN apk update && \
    apk add --no-cache fish && \
    rm -f /tmp/* /etc/apk/cache/*

RUN sed -i -e "s/bin\/ash/usr\/bin\/fish/" /etc/passwd

ENV SHELL /usr/bin/fish

COPY hooks /buildkite/hooks/
COPY scripts /scripts

ENV PATH="/scripts:${PATH}"