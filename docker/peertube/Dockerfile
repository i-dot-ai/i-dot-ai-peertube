FROM chocobozzz/peertube:production-bullseye

# ARG GIT_SHA
# ENV GIT_SHA=${GIT_SHA}

# ENV PYTHONUNBUFFERED 1
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV TZ=UTC
ARG PEERTUBE_SECRET
ARG POSTGRES_PASSWORD
ENV PEERTUBE_SECRET: ${PEERTUBE_SECRET}
ENV POSTGRES_USER: postgres
ENV POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
ENV POSTGRES_DB: peertube
ENV PEERTUBE_DB_USERNAME: postgres
ENV PEERTUBE_DB_PASSWORD: ${POSTGRES_PASSWORD}

# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# RUN curl -o /bin/wait-for-db https://github.com/palfrey/wait-for-db/releases/download/v1.2.0/wait-for-db-linux-x86
# RUN chmod +x /bin/wait-for-db

# RUN python3 -m pip install -U pip setuptools wheel

# COPY ./api/requirements.lock /app/api/requirements.lock
# RUN python3 -m pip install -r /app/api/requirements.lock --no-cache-dir

# COPY ./docker/api/start.sh /start.sh
# RUN chmod +x /start.sh

COPY ./docker/peertube/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY . /app

# WORKDIR /app/api

# RUN \
#     DJANGO_SETTINGS_MODULE=ellandi.settings_base \
#     DJANGO_SECRET_KEY="temp" \
#     python manage.py collectstatic --no-input

EXPOSE 9000

# ENTRYPOINT ["sh","/entrypoint.sh"]
# CMD ["sh","/start.sh"]
