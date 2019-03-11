FROM node:alpine

RUN apk --no-cache add \
    youtube-dl \
    git \
    ffmpeg \
    faac

RUN npm install -g git+https://git@github.com/JustinHop/castnow.git

ENTRYPOINT ["/usr/local/bin/castnow"]
