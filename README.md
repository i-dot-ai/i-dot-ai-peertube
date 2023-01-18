## test build of peertube for cloud foundry

### local push to CF
act --secret-file .secrets -W .github/workflows/peertube.yml push -j push_images --rm


### local docker build
docker-compose up --build --force-recreate --remove-orphans testpeertube