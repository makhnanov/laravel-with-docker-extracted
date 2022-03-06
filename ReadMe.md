# Install guide
```shell
# git@github.com:makhnanov/laravel-with-docker-extracted.git
project_dir=laravel-with-docker-extracted && \
  git clone https://github.com/makhnanov/laravel-with-docker-extracted.git $project_dir && \
  cd $project_dir && \
  cd Laradock && cp .env.example .env && cd .. && \
  cd Src && cp .env.example .env && cd .. && \
  rm -rf .git && \
  docker stop $(docker ps -aq) && \
  make up install shell
```
