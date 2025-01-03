FROM ubuntu:24.10

ARG VERSION="24.10.115"

RUN apt-get update && apt-get install -y curl tar bzip2 make && \
    curl -L https://github.com/roswell/roswell/releases/download/v${VERSION}/roswell-${VERSION}-linux-arm64.tar.bz2 | \
    tar xvjf - && \
    cd roswell && \
    make install && \
    cd / && \
    rm -rf roswell && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN ros
CMD ["bash"]
