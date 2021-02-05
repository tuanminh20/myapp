# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
```
$ rbenv install 2.7.1
$ ruby -v
ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c)
```

* Node version
```
$ yarn -v
1.22.5
$ node -v
v12.20.1
```

* Docker version
```
$ docker -v
Docker version 20.10.3, build 48d30b5
$ docker-compose -v
docker-compose version 1.28.2, build 67630359
```

* System dependencies
```
sudo apt-get install -y libmysqlclient-dev
```

* Configuration

* Database initialization
```
$ docker-compose stop database
$ docker-compose up -d --force-recreate database
$ ./bin/setup
```

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
