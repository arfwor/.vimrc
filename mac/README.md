# brew install
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
# brew uninstall
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
```

# brew mirrors
```
替换 brew.git:
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git

替换 homebrew-core.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git

替换 Homebrew Bottles 源
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.profile

重置 brew.git:
cd "$(brew --repo)"
git remote set-url origin https://github.com/Homebrew/brew.git

重置 homebrew-core.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://github.com/Homebrew/homebrew-core.git

重置 Homebrew Bottles 源
vim ~/.profile 删除 HOMEBREW_BOTTLE_DOMAIN
```

# install postgresql
```
brew install postgresql
# initdb /usr/local/var/postgres -E utf8
pg_ctl -D /usr/local/var/postgres start
createuser myusername -P
createdb mydbname -O myusername -E UTF8 -e
psql -h 127.0.0.1 -U myusername -d mydbname
=> create schema myschema
=> drop schema myschema cascade
dropdb -U mydb -h 127.0.0.1 mydb
dropuser myusername
```

# install nginx
```
brew install nginx
# start
sudo nginx
# stop
sudo nginx -s quit
# config
/usr/local/etc/nginx/nginx.conf
/usr/local/var/www
```

# Command Line Tools (包含 git)
```
xcode-select --install
```

# install golang
```
brew install go
```

# install open jdk
```
#brew cask install java
brew install openjdk@11
```

# install gradle
```
brew install gradle
```

# install maven
```
brew install maven
```

# install ant
```
brew install ant
```

# install node
```
brew install node
```