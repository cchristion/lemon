# Watermelon

## Try it in Docker
* Download Dockerfile
  ```shell
  curl --proto '=https' --tlsv1.3 -sSf https://raw.githubusercontent.com/cchristion/watermelon/main/install.sh -o /tmp/Dockerfile
  ```
* Build Docker image
  ```shell
  docker build -f /tmp/Dockerfile -t "watermelon" .
  ```
* Run Docker container
  ```shell
  docker run -it "watermelon"
  ```

## Install Dependencies
* Termux
  ```shell
  { pkg up
  pkg install git tmux zsh ;}
  ```
* Alpine
  ```shell
  apk add --upgrade --no-cache git tmux zsh
  ```
* Ubuntu
  ```shell
  { apt update
  apt install git tmux zsh ;}
  ```

## Installing watermelon
* Download the Script
  ```shell
  curl --proto '=https' --tlsv1.3 -sSf https://raw.githubusercontent.com/cchristion/watermelon/main/install.sh -o /tmp/install.sh
  ```
* Installing watermelon
  ```shell
    sh /tmp/install.sh
  ```