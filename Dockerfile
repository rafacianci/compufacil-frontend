FROM rafacianci/yarn-container:latest
RUN apt-get update --fix-missing \
    && apt-get install -y hugo \
    && apt-get install build-essential chrpath libssl-dev libxft-dev \
    && apt-get install libfreetype6 libfreetype6-dev \
    && apt-get install libfontconfig1 libfontconfig1-dev \
    && cd ~ \
    && export PHANTOM_JS="phantomjs-1.9.8-linux-x86_64" \
    && wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 \
    && tar xvjf $PHANTOM_JS.tar.bz2 \
    && mv $PHANTOM_JS /usr/local/share \
    && ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
