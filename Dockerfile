ARG UID=200024
ARG GID=200024

FROM clamav/clamav:stable_base
ARG UID
ARG GID

LABEL maintainer="Thien Tran contact@tommytran.io"

COPY --from=ghcr.io/polarix-containers/hardened_malloc:latest /install /usr/local/lib/
ENV LD_PRELOAD="/usr/local/lib/libhardened_malloc.so"

RUN apk -U upgrade \
    && apk add libstdc++ shadow

RUN --network=none \
    usermod -u ${UID} clamav \
    && groupmod -g ${GID} clamav \
    && find / -user 100 -exec chown -h clamav {} \; \
    && find / -group 101 -exec chgrp -h clamav {} \; \
    && apk del shadow \
    && rm -rf /var/cache/apk/*

