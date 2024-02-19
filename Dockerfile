# Base Docker image
FROM ubuntu:jammy

# Metadata
LABEL project="lemon"
LABEL maintainer="cchristion"

# Environment variables
ARG gid=10001
ARG uid=10000
ARG USERNAME=lemon
ARG PASSWORD=lemon

# Non-interactive install and UTC timezone
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get update && \
    apt-get install -y curl fzf git ripgrep sudo tmux zoxide zsh && \
    rm -rf /var/lib/apt/lists/*

# Adding user
RUN addgroup --gid $gid --system ${USERNAME} && \
    adduser --uid $uid --system --ingroup ${USERNAME} \
    --home /home/${USERNAME} --shell /bin/zsh ${USERNAME}

# Set a password for the USER and Grant sudo privileges to the USER
RUN echo "${USERNAME}:${PASSWORD}" | chpasswd && \
    echo "${USERNAME} ALL=(ALL) ALL" >> /etc/sudoers

# Changing USER
USER ${USERNAME}
WORKDIR /home/${USERNAME}

# Start zsh
ENTRYPOINT ["/bin/zsh"]

