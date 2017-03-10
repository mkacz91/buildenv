FROM alpine:3.5

RUN apk update && apk add \
  g++ \
  cmake \
  make

COPY container-utils /container-utils

RUN sh /container-utils/adduser.sh build

CMD sh /container-utils/start-container.sh
