FROM node:14.15.3-buster-slim
WORKDIR /data/node-re2-cache-issue/
RUN node --version; npm --version; yarn --version;
ADD . .
RUN bash build.sh
