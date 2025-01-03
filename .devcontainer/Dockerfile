FROM ubuntu:24.10

ARG VERSION="24.10.115"
ARG USER="cl-user"

# Create cl-user
RUN useradd -m -s /bin/bash ${USER} && \
    mkdir -p /home/${USER}/tmp/roswell && \
    chown -R ${USER}:${USER} /home/${USER}

# install tools
RUN apt-get update && apt-get install -y git build-essential automake libcurl4-openssl-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# install Roswell user locally
USER ${USER}
RUN cd $HOME/tmp \
    && git clone -b release https://github.com/roswell/roswell.git \
    && cd roswell \
    && sh bootstrap \
    && ./configure --prefix=$HOME/.local/ \
    && make && make install \
    && ~/.local/bin/ros
# add bin path installed by Roswell
RUN echo 'export PATH="$HOME/.roswell/bin:$PATH"' >> $HOME/.bashrc
CMD ["bash"]
