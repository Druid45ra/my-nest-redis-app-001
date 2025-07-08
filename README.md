<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="120" alt="Nest Logo" /></a>
</p>

# my-nest-redis-app_001

> Starter NestJS project with Redis integration

<p align="center">
  <!-- Badge-uri Shields.io -->
  <a href="https://github.com/Druid45ra/my-nest-redis-app_001/actions"><img src="https://img.shields.io/github/actions/workflow/status/Druid45ra/my-nest-redis-app_001/ci.yml?branch=main&label=build" alt="Build Status"></a>
  <img src="https://img.shields.io/badge/coverage-100%25-brightgreen" alt="Test Coverage">
  <img src="https://img.shields.io/badge/node-%3E=20.x-blue" alt="Node Version">
  <img src="https://img.shields.io/github/license/Druid45ra/my-nest-redis-app_001" alt="License">
</p>

## Linkuri rapide

- [Exemplu fișier de mediu `.env.example`](./.env.example)
- [Ghid de contribuție `CONTRIBUTING.md`](./CONTRIBUTING.md)
- [Changelog `CHANGELOG.md`](./CHANGELOG.md)

## Documentație API

Dacă ai activat Swagger, documentația API este disponibilă la:  
[http://localhost:3000/api](http://localhost:3000/api)

## Description

Acesta este un proiect de tip starter pentru [NestJS](https://github.com/nestjs/nest), cu integrare Redis, creat și întreținut de [Druid45ra](https://github.com/Druid45ra).

## Project setup

```bash
npm install
```

## Compile and run the project

```bash
# development
npm run start

# watch mode
npm run start:dev

# production mode
npm run start:prod
```

## Run tests

```bash
# unit tests
npm run test

# e2e tests
npm run test:e2e

# test coverage
npm run test:cov
```

## Save this project to GitHub

1. Creează un repository nou pe [GitHub](https://github.com/new) cu numele dorit (ex: `my-nest-redis-app_001`).
2. Deschide terminalul în folderul proiectului și rulează comenzile:

```bash
git init
git add .
git commit -m "Prima versiune a proiectului"
git remote add origin https://github.com/Druid45ra/my-nest-redis-app_001.git
git branch -M main
git push -u origin main
```

3. Proiectul tău va fi acum salvat pe GitHub, la adresa:  
   [https://github.com/Druid45ra/my-nest-redis-app_001](https://github.com/Druid45ra/my-nest-redis-app_001)

## Resources

- [NestJS Documentation](https://docs.nestjs.com)
- [Discord NestJS](https://discord.gg/G7Qnnhy)
- [NestJS Courses](https://courses.nestjs.com/)
- [NestJS Devtools](https://devtools.nestjs.com)

## Author

- GitHub: [Druid45ra](https://github.com/Druid45ra)

## License

MIT

## Run with Docker

1. Build imaginea:
   ```bash
   docker build -t my-nest-redis-app .
   ```

2. Pornește containerul (asigură-te că ai un Redis disponibil, ex: `docker run -d --name redis -p 6379:6379 redis`):
   ```bash
   docker run --env-file .env -p 3000:3000 my-nest-redis-app
   ```

## Configurare și pornire Redis

### Local (folosind Docker)

Cel mai simplu mod de a porni un server Redis local este cu Docker:

```bash
docker run -d --name redis -p 6379:6379 redis
```

- Acestă comandă va descărca imaginea oficială Redis și va porni un container pe portul 6379.
- Pentru a opri containerul:  
  ```bash
  docker stop redis
  ```
- Pentru a porni din nou:  
  ```bash
  docker start redis
  ```

### Instalare Redis nativă

- **Windows:**  
  Poți folosi [Memurai](https://www.memurai.com/) sau [Redis pentru Windows](https://github.com/microsoftarchive/redis/releases).
- **Linux/Mac:**  
  ```bash
  sudo apt-get install redis-server
  # sau
  brew install redis
  ```

### Redis în cloud

Poți folosi un serviciu cloud precum:
- [Redis Cloud](https://redis.com/redis-enterprise-cloud/overview/)
- [Upstash](https://upstash.com/)
- [Azure Cache for Redis](https://azure.microsoft.com/en-us/products/cache/)

După ce ai un endpoint Redis, setează variabila de mediu `REDIS_URL` în `.env`:

```
REDIS_URL=redis://<user>:<password>@<host>:<port>
```

## Exemple de request-uri API

### 1. GET toate resursele (exemplu generic)
```bash
curl -X GET http://localhost:3000/items
```

### 2. GET un item după ID
```bash
curl -X GET http://localhost:3000/items/123
```

### 3. POST un item nou
```bash
curl -X POST http://localhost:3000/items \
  -H "Content-Type: application/json" \
  -d '{"name":"Item nou","value":42}'
```

### 4. PUT (update) un item
```bash
curl -X PUT http://localhost:3000/items/123 \
  -H "Content-Type: application/json" \
  -d '{"name":"Item actualizat","value":100}'
```

### 5. DELETE un item
```bash
curl -X DELETE http://localhost:3000/items/123
```

> Înlocuiește `/items` și datele din body cu resursele reale din aplicația

## Features

- Integrare Redis cu NestJS pentru cache sau stocare date temporare
- Scripturi pentru dezvoltare, producție și testare
- Teste unitare și e2e de bază
- Suport Docker pentru rulare rapidă în containere
- Configurare ușoară prin fișier `.env`
- Documentație și exemple de request-uri API

## To Do / Roadmap

- Adăugare autentificare JWT
- Implementare rate limiting cu Redis
- Adăugare validare avansată pentru request-uri
- Extindere testare automată (mai multe scenarii e2e)
- Integrare CI/CD pentru build și testare automată
- Documentare OpenAPI (Swagger)

## Testare automată în CI/CD (GitHub Actions)

Creează un fișier `.github/workflows/ci.yml` cu următorul conținut pentru a rula automat testele la fiecare push:

```yaml
# filepath: .github/workflows/ci.yml
name: CI

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build-and-test:
    runs-on: ubuntu-latest

    services:
      redis:
        image: redis
        ports:
          - 6379:6379

    steps:
      - uses: actions/checkout@v4
      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 20
      - run: npm ci
      - run: npm run test
      - run: npm run test:e2e
```

## Contribuie

Oricine dorește să ajute la dezvoltarea acestui proiect este binevenit!  
Vezi regulile și pașii de contribuție în `CONTRIBUTING.md`.
