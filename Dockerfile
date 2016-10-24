FROM rafacianci/yarn-container:latest
RUN apt-get update --fix-missing \
    && apt-get install -y --no-install-recommends \
        hugo \
        ca-certificates \
        bzip2 \
        libfontconfig \
    && mkdir /tmp/phantomjs \
    && curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
        | tar -xj --strip-components=1 -C /tmp/phantomjs \
    && mv /tmp/phantomjs/bin/phantomjs /usr/local/bin \
    && useradd --system --uid 72379 -m --shell /usr/sbin/nologin phantomjs \
    && su phantomjs -s /bin/sh -c "phantomjs --version"
