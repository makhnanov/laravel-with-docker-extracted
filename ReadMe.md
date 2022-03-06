# Install guide
```shell
git clone https://github.com/makhnanov/laravel-with-docker-extracted.git && \
  cd laravel-with-docker-extracted && \
  rm -rf .git && \
  docker stop $(docker ps -aq) && \
  make up install shell
```
