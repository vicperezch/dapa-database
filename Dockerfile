FROM postgres:17

EXPOSE 5432

COPY ./migrations/ /migrations/
COPY ./setup/ /docker-entrypoint-initdb.d/

