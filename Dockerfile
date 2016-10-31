FROM rafacianci/yarn-container:latest
RUN apt-get update --fix-missing \
    && apt-get install -y --no-install-recommends \
        hugo \
        bzip2 \
        libfontconfig \
    && curl -o- -L "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2" > phantomjs.tar.bz2 \
    && tar xjf phantomjs.tar.bz2 \
    && ln -s phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/bin/phantomjs
