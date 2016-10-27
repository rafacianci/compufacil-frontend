FROM rafacianci/yarn-container:latest
RUN apt-get update --fix-missing \
    && apt-get install -y --no-install-recommends \
        hugo \
        libfontconfig \
