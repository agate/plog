FROM node:lts-alpine

COPY . /plog
RUN apk add dumb-init --no-cache && \
    cd /plog && \
    npm link

ENTRYPOINT [ "dumb-init", "--" ]
CMD [ "plog" ]
