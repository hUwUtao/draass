# docker rsync as a serve service

## How to use

1. run the `Dockerfile`

```sh
docker run -d -p 9873:873 -p 9080:80 -e URL="<yourhost>:<mapped873port>" huwutao/draass
```

will start a rsync daemon at port `9873` with 

2. feed `public` directory with files you need to serve

## Auto script

```sh
curl https://yourhost:9080 | sh
```

THIS WILL DELETE ALL FILES NOT PRESENT IN `public` DIRECTORY, please aware

you could reverse proxy `9080` port to any path without rewrite, without side-effects and configuration