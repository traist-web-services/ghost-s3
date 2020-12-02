FROM ghost:latest
WORKDIR /var/lib/ghost
RUN npm install -g ghost-storage-adapter-s3 && \
	ln -s /usr/local/lib/node_modules/ghost-storage-adapter-s3 ./current/core/server/adapters/storage/s3
COPY ./Alto-master /var/lib/ghost/content/themes/Alto-master