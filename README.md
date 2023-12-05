# Watermelon

## Try it in Docker
* Download Dockerfile
  ```shell
  wget https://raw.githubusercontent.com/cchristion/watermelon/main/Dockerfile
  ```
* Build Docker image
  ```shell
  docker build -t "watermelon" .
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
  curl --proto '=https' --tlsv1.3 -sSf https://raw.githubusercontent.com/cchristion/watermelon/main/install.sh -o install.sh
  ```
* Installing watermelon
  ```shell
  sh install.sh
  ```