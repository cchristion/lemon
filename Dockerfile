# Base Docker image
FROM alpine:3.18

# Metadata
LABEL project="lemon"
LABEL maintainer="cchristion"

# Environment variables
ARG gid=10001
ARG uid=10000
ARG USERNAME=lemon
ARG PASSWORD=lemon

# Adding user
RUN addgroup --gid $gid --system ${USERNAME} && \
    adduser --uid $uid --system \
    --ingroup ${USERNAME} --home /home/${USERNAME} \
    --shell /bin/zsh ${USERNAME}

# Set a password for the USER and Grant sudo privileges to the USER
RUN echo "${USERNAME}:${PASSWORD}" | chpasswd && echo "${USERNAME} ALL=(ALL) ALL" >> /etc/sudoers

# Installing softwares
RUN apk add --upgrade --no-cache \
    curl git neovim sudo tmux zoxide zsh

# Changing USER
USER ${USERNAME}
WORKDIR /home/${USERNAME}

# Start zsh
ENTRYPOINT ["/bin/zsh"]
