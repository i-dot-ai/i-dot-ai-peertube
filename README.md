# build of peertube for cloud foundry
Currently a work in progres

### local push to CF using act
act --secret-file .secrets -W .github/workflows/peertube.yml push -j push_images --rm


### local docker build
docker-compose up --build --force-recreate --remove-orphans testpeertube