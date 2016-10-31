FROM rafacianci/yarn-container:latest
RUN apt-get update --fix-missing \
    && apt-get install -y --no-install-recommends \
        hugo \
        bzip2 \
        libfontconfig \
    && curl -o- -L "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-i686.tar.bz2" > phantomjs.tar.bz2 \
    && tar xjf phantomjs.tar.bz2 \
    && ln -s phantomjs-2.1.1-linux-i686/bin/phantomjs /usr/bin/phantomjs
