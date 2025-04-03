# DAPA Database
This repository contains the setup and versioning for a **PostgreSQL** database using **Docker**.

## Getting started
1. **Clone** the repository.
```bash
git clone https://github.com/vicperezch/dapa-database.git
cd dapa-database
```
2. **Setup** the ```.env``` file containing the database secrets.
```
POSTGRES_USER=youruser
POSTGRES_PASSWORD=yourpassword
POSTGRES_DB=yourdb
```
4. **Build** the image with:
```
docker build -t dapa-db .
```
4. **Run** the container.
```
docker run --env-file .env -p 5432:5432 dapa-db
```
5. **Connect** to the database runing on the port 5432 with your user and password.
