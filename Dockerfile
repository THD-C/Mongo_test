FROM mongo:8.0.3

ARG GITHUB_TOKEN
RUN git clone https://$GITHUB_TOKEN@github.com/THD-C/Secrets.git


COPY ./data /data
COPY ./init-db.sh /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/init-db.sh

EXPOSE 27017