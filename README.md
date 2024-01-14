# lemon
This repository contains my workspace configurations and environmental tools, designed to enhance my productivity.

## Install Dependencies
```
7zip bash build-base bzip2-dev curl git libffi-dev linux-headers openssh openssl-dev readline-dev sqlite-dev sudo tk-dev tmux xz-dev zlib-dev zoxide zsh
```
### Docker

Dependencies included.

1. Download
   ```shell
   LEMONTMPFILE=$(mktemp)
   curl --proto '=https' --tlsv1.3 -sSf https://raw.githubusercontent.com/cchristion/lemon/main/Dockerfile -o $LEMONTMPFILE
   ```
2. Build an image
   ```shell
   docker build \
   -t lemon:1.0.0 \
   --build-arg gid="$(id -g)" \
   --build-arg uid="$(id -u)" \
   -f $LEMONTMPFILE \
   .
   ```
3. Running built image
   ```shell
   docker run -it \
   -v $(pwd):/home/lemon \
   -u $(id -u):$(id -g) \
   <image id>
   ```

## Installing configurations
```shell
curl --proto '=https' --tlsv1.3 -sSf https://raw.githubusercontent.com/cchristion/lemon/main/install.sh | sh
```

### Updating configurations
```shhell
# cd into lemon directory
( git pull && cp -rsvf $(pwd)/.config ~/ && cp -rsvf $(pwd)/.zshenv ~/.zshenv )
```

## Installing pyenv
```shell
export PYENV_ROOT="${XDG_CONFIG_HOME:-$HOME/.config}/.pyenv" && curl --proto '=https' --tlsv1.3 -sSf https://pyenv.run | bash
```