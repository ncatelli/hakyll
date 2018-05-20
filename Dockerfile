FROM haskell:8.2.1

LABEL maintainer="Nate Catelli <ncatelli@packetfire.org>"
LABEL description="A container with hakyll."

RUN apt-get update && \ 
    apt-get install -y unzip curl haskell-platform && \
    cabal update && \
    cabal install hakyll && \
    rm -rf /tmp/* && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME /data
WORKDIR /data

CMD ["/bin/sh"]
