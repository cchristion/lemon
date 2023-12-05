# Watermelon

## Try it in Docker
  ```shell
  wget https://raw.githubusercontent.com/cchristion/watermelon/main/Dockerfile
  docker build -t "watermelon" .
  docker run -it "watermelon"
  ```

## Installing watermelon

### Install Dependencies
* Termux
  ```shell
  pkg up
  pkg install git tmux zsh direnv
  ```
* Alpine
  ```shell
  apk add --upgrade --no-cache git tmux zsh direnv
  ```
* Ubuntu
  ```shell
  apt update
  apt install git tmux zsh direnv
  ```

### Downloading and Installing
* Download the Script
  ```shell
  wget https://raw.githubusercontent.com/cchristion/watermelon/main/install.sh -O /tmp/install.sh
  sh /tmp/install.sh
  ```