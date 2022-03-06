# Install guide
```shell
# https://github.com/makhnanov/laravel-with-docker-extracted.git
# git@github.com:makhnanov/laravel-with-docker-extracted.git
project_dir=laravel-with-docker-extracted && \
  git clone https://github.com/makhnanov/laravel-with-docker-extracted.git $project_dir && \
  cd $project_dir && \
  cd laradock && cp .env.example .env && cd .. && \
  cd sources && cp .env.example .env && cd .. && \
  rm -rf .git && \
  docker stop $(docker ps -aq) && \
  make up install migrate && \
  git init --initial-branch=main && \
  make shell
```

## Project on GitHub
[https://github.com/makhnanov/laravel-with-docker-extracted](https://github.com/makhnanov/laravel-with-docker-extracted)
