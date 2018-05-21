FROM alpine:3.7

LABEL maintainer="Nate Catelli <ncatelli@packetfire.org>"
LABEL description="A container with hakyll."

RUN apk add --no-cache ghc cabal gcc libc-dev zlib-dev && \ 
    cabal update && \
    cabal install hakyll

VOLUME /data
WORKDIR /data

CMD ["/bin/sh"]
