

cf push -f manifests/"$CF_SPACE"/etf_manifest.yml --docker-image $DOCKER_REPOSITORY/${{ github.repository_owner }}/$DOCKER_IMAGE:$IMAGE_TAG


cf push -f peertube.yml --docker-image chocobozzz/peertube:production-bullseye


cf create-service postgres tiny-unencrypted-13 peertube-sandbox


cf set-env peertube-sandbox PEERTUBE_SECRET 2dd252e9d2017489ca8addcf6a0836d6970336612e437a648903579f56c4976f
cf set-env peertube-sandbox POSTGRES_USER 'uwveqln8sq_o5ahv'
cf set-env peertube-sandbox POSTGRES_PASSWORD 'O9l191Xwm6k5ZRpGy0UvAJGxYFiS8Wt2'
cf set-env peertube-sandbox POSTGRES_DB peertube
cf set-env peertube-sandbox PEERTUBE_DB_USERNAME peertube
cf set-env peertube-sandbox PEERTUBE_DB_PASSWORD 'Password!23'
cf set-env peertube-sandbox PEERTUBE_DB_HOSTNAME 'rdsbroker-ea970209-72d8-4d83-8bef-a6249e961815.coowcrpgh5fz.eu-west-2.rds.amazonaws.com'



cf set-env peertube-sandbox PEERTUBE_DB_SSL true