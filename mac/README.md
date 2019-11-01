# brew install
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
# brew uninstall
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
```

# postgresql install
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

# nginx install
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