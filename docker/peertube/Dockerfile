FROM chocobozzz/peertube:production-bullseye
# FROM rp-peertube:latest 


COPY . /app

COPY ./docker/peertube/start.sh /start.sh
RUN chmod +x /start.sh

COPY ./docker/peertube/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 9000

ENTRYPOINT ["sh","/entrypoint.sh"]
CMD ["sh","/start.sh"]