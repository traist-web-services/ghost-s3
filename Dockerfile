FROM ghost:latest

WORKDIR /var/lib/ghost

RUN npm install ghost-storage-adapter-s3 \
    && mkdir -p /var/lib/ghost/content/adapters \
    && cp -vr ./node_modules/ghost-storage-adapter-s3 /var/lib/ghost/content/adapters/s3
