# LeanLoom, lnl

## Installing lnl

### Install Dependencies
```
git zsh

# Optional
7zip bash build-base bzip2-dev curl libffi-dev linux-headers openssh openssl-dev readline-dev sqlite-dev sudo tk-dev tmux xz-dev zlib-dev zoxide
```

### Downloading and Installing
```shell
curl --proto '=https' --tlsv1.3 -sSfL https://raw.githubusercontent.com/cchristion/lnl/main/install.sh | sh
```

### Updating lnl
```sh
# cd into lnl directory
( git pull && cp -rsvf $(pwd)/.config ~/ && cp -rsvf $(pwd)/.zshenv ~/.zshenv )
```
