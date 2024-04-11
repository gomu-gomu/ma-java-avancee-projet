# Sudent Management

Exercices are inside of the [tp.pdf](./assets/tp.pdf) file.

Source code is under the [src](./src/) folder

## Usage

Be sure to recursively clone the submodules

```sh
git submodule update --init --recursive
```

The project can be run via:

```sh
./scripts/start.sh
```

## Services

* [**Backend**](https://github.com/gomu-gomu/ma-java-avancee-projet-backend): Java-based application service.
* [**Frontend**](https://github.com/gomu-gomu/ma-java-avancee-projet-frontend): Initializes web app service.
* [**Seed**](https://github.com/gomu-gomu/ma-java-avancee-projet-seed): Initializes the database with necessary data.
* **DB**: PostgreSQL database service.
* **pgAdmin**: Web-based PostgreSQL management tool.
* **YAADE**: Yet Another API Development Environment, an API testing tool.

| Service      | URL                                                  | Description                      |
|--------------|------------------------------------------------------|----------------------------------|
| **Backend**  | http://localhost:8080/api/<endpoint>                 | Access to the API                |
| **Frontend** | http://localhost:3000                                | Access to the web app client     |
| **DB**       | http://localhost:5432                                | PostgreSQL database service      |
| **pgAdmin**  | http://localhost:5050                                | Web-based PostgreSQL management  |
| **YAADE**    | http://localhost:9339                                | API testing tool                 |
