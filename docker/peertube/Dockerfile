FROM chocobozzz/peertube:production-bullseye

ARG PEERTUBE_SECRET
ARG POSTGRES_PASSWORD
ENV PEERTUBE_SECRET: ${PEERTUBE_SECRET}
ENV POSTGRES_USER: postgres
ENV POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
ENV POSTGRES_DB: peertube
ENV PEERTUBE_DB_USERNAME: postgres
ENV PEERTUBE_DB_PASSWORD: ${POSTGRES_PASSWORD}


COPY ./docker/peertube/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY . /app

EXPOSE 9000
