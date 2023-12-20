# Watermelon

## Try it in Docker
```shell
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
```shell
curl --proto '=https' --tlsv1.2 -sSfL https://raw.githubusercontent.com/cchristion/watermelon/main/install.sh -o install.sh
sh install.sh
```
