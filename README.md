🕷️spidey
========

Helper script for running Scrapy spider on Docker.

You can start scraping more easily.


### Dependencies
- Bash
- Docker


## How to Use
### Setup environment
git clone this project to your local.

```sh
$ git clone git@github.com:mitsu-ksgr/spidey.git
$ cd spidey
```

### Generate spider
```sh
$ ./spidey gen {SPIDER_NAME} {SITE_URL}

$ ./spidey gen example example.com
#> ./spiders/example/example.py generated.
```

### Run spider
```sh
$ ./spidey run {SPIDER_FILE_PATH}

$ ./spidey run ./spiders/example/example.py
#> ./outputs/example.json generated
```


## Learn scrapy
- https://scrapy.org/
- https://docs.scrapy.org/en/latest/index.html

