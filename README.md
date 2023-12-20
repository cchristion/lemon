# Watermelon

## Try it in Docker
```sh
wget https://raw.githubusercontent.com/cchristion/watermelon/main/Dockerfile
docker build -t "watermelon" .
docker run -it "watermelon"
```

## Installing watermelon

### Install Dependencies
```
git zsh
```
```
# Optional
tmux direnv delta
```

### Downloading and Installing
```sh
curl --proto '=https' --tlsv1.2 -sSfL https://raw.githubusercontent.com/cchristion/watermelon/main/install.sh -o install.sh
sh install.sh
```

### Downloading and Installing
```sh
# cd into watermelon directory
( git pull && cp -rsvf $(pwd)/.config ~/ && cp -rsvf $(pwd)/.zshenv ~/.zshenv )
```
