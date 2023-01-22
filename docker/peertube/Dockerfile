FROM chocobozzz/peertube:production-bullseye
# FROM rp-peertube:latest 


COPY . /app

COPY ./docker/peertube/custom-environment-variables.yaml /app/support/docker/production/config/custom-environment-variables.yaml

EXPOSE 9000
