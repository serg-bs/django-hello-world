FROM        python:3.7

ENV         LANG C.UTF-8
ENV         PROJECTPATH=/home/app/helloworld
ENV         USER app

RUN         set -x \
            && apt-get -qq update \
            && apt-get install -yq libpq-dev git \
            && apt-get purge -y --auto-remove \
            && rm -rf /var/lib/apt/lists/*

RUN         useradd -m -d /home/${USER} ${USER} \
            && chown -R ${USER} /home/${USER}

RUN         mkdir -p ${PROJECTPATH}



COPY entrypoint.sh /entrypoint.sh
RUN  chmod +x /entrypoint.sh \
     && chown app /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["start"]