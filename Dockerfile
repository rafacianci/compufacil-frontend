FROM rafacianci/yarn-container:latest
RUN apt-get update --fix-missing \
    && apt-get install -y hugo \
    && apt-get install -y build-essential chrpath libssl-dev libxft-dev \
    && apt-get install -y libfreetype6 libfreetype6-dev \
    && apt-get install -y libfontconfig1 libfontconfig1-dev \
    && npm install -g karma-phantomjs-launcher \
