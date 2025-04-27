FROM postgres:17

EXPOSE 5432

COPY ./migrations/ /migrations/
COPY ddl.sql /docker-entrypoint-initdb.d/

