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
* [**Seed**](https://github.com/gomu-gomu/ma-java-avancee-projet-seed): Initializes the database with necessary data.
* **DB**: PostgreSQL database service.
* **pgAdmin**: Web-based PostgreSQL management tool.
* **YAADE**: Yet Another API Development Environment, an API testing tool.

| Service      | URL                                                  | Description                      |
|--------------|------------------------------------------------------|----------------------------------|
| **Frontend** | http://localhost:3000                                | Access to the web app client     |
| **Backend**  | http://localhost:8080/api/<endpoint>                 | Access to the Java-based backend |
| **Swagger**  | http://localhost:8080/api/swagger-ui/index.html      | Access to Swagger                |
| **OpenAPI**  | http://localhost:8080/api/v3/api-docs                | Access to OpenAPI description    |
| **Design**   | http://localhost:3000/_tailwind                      | Access to the Tailwind inspecter |
| **DB**       | http://localhost:5432                                | PostgreSQL database service      |
| **pgAdmin**  | http://localhost:5050                                | Web-based PostgreSQL management  |
| **YAADE**    | http://localhost:9339                                | API testing tool                 |
