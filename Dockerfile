# Built using https://github.com/cchristion/lantern
FROM alpine:3.18

# Metadata
LABEL project="lantern"
LABEL maintainer="cchristion"

# Environment variables
ARG gid=10001
ARG uid=10000
ARG USERNAME=lantern
ARG PASSWORD=lantern

# Adding user
RUN addgroup --gid $gid --system ${USERNAME} && \
    adduser --uid $uid --system \
    --ingroup ${USERNAME} --home /home/${USERNAME} \
    --shell /bin/zsh ${USERNAME}

# Set a password for the USER
RUN echo "${USERNAME}:${PASSWORD}" | chpasswd

# Grant sudo privileges to the USER
RUN echo "${USERNAME} ALL=(ALL) ALL" >> /etc/sudoers

# Installing softwares
RUN apk add --upgrade --no-cache \
    sudo zsh git tmux

# Changing USER
USER ${USERNAME}
WORKDIR /home/${USERNAME}

RUN git clone --depth 1 https://github.com/cchristion/watermelon.git && \
    cd watermelon && \
    cp -rsv $(pwd)/.config ~/ && \
    cp -rsv $(pwd)/.zshenv ~/.zshenv  && \
    mkdir -p ${XDG_CACHE_HOME:-$HOME/.cache}/zsh ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins  && \
    cd

RUN git clone --depth 1 https://github.com/zdharma-continuum/fast-syntax-highlighting ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins/fast-syntax-highlighting

RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins/powerlevel10k

# Start zsh
ENTRYPOINT ["/bin/zsh"]
