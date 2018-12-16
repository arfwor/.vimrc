# brew install
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

# postgresql install
```
brew install postgresql
pg_ctl -D /usr/local/var/postgres start
createuser myusername -P
createdb mydbname -O myusername -E UTF8 -e
psql -U myusername -d mydbname -h 127.0.0.1
=> create schema myschema
dropdb -U mydb -h 127.0.0.1 mydb
dropuser xql
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