<h1 align="center">
    <a href="https://github.com/ODGodinho">
        <img
            src="https://raw.githubusercontent.com/ODGodinho/Stanley-TheTemplate/main/public/images/Stanley.jpg"
            alt="Stanley Imagem" width="500"
        />
    </a>
    <br />
    Playwright Alpine docker
    <br />
</h1>

<h4 align="center">Image for playwright docker alpine 📦!</h4>

<p align="center">

[![Stargazers](https://img.shields.io/github/stars/ODGodinho/Playwright-Alpine-Docker?color=F430A4)](https://github.com/ODGodinho/Playwright-Alpine-Docker/stargazers)
[![Made by ODGodinho](https://img.shields.io/badge/made%20by-ODGodinho-%2304A361)](https://www.linkedin.com/in/victor-alves-odgodinho/)
[![Forks](https://img.shields.io/github/forks/ODGodinho/Playwright-Alpine-Docker?color=CD4D34)](https://github.com/ODGodinho/Playwright-Alpine-Docker/network/members)
![Repository size](https://img.shields.io/github/repo-size/ODGodinho/Playwright-Alpine-Docker)
[![GitHub last commit](https://img.shields.io/github/last-commit/ODGodinho/Playwright-Alpine-Docker)](https://github.com/ODGodinho/Playwright-Alpine-Docker/commits/master)
[![License](https://img.shields.io/badge/license-MIT-brightgreen)](https://opensource.org/licenses/MIT)

</p>

# Table of Contents

- [🎇 Benefits](#-benefits)
- [📗 Images](#-images)
- [⏩ Get Started](#-get-started)
  - [🍀 Create Dockerfile](#-create-dockerfile)
  - [📦 Create Docker Compose file](#-create-docker-compose-file)

---

## 🎇 Benefits

- 🚀 Speed start new project playwright docker
- 🎇 Reduced size image
- 📦 Support private and public packages npm

## 📗 Images

- [latest](https://github.com/ODGodinho/Playwright-Alpine-Docker/tree/main/lts/Dockerfile)
- [16](https://github.com/ODGodinho/Playwright-Alpine-Docker/tree/main/16/Dockerfile)

## ⏩ Get Started

Read this documentation for private packages npm
<https://docs.npmjs.com/docker-and-private-modules>

### 🍀 Create Dockerfile

```dockerfile
FROM dragonsgamers/playwright-alpine:latest

# add only if your project has private package
ARG NPM_TOKEN

# App
WORKDIR /app

COPY --chown=node package.json ./
# Add only you project exists .npmrc file
COPY --chown=node .npmrc .npmrc

# Use yarn.lock or package.lock never both
COPY --chown=node package.json package-lock.json yarn.lock ./
RUN yarn install

CMD [ "node", "dist/index.js" ]
```

### 📦 Create Docker Compose file

```yml
version: '3.7'

services:
  app:
    build:
      dockerfile: Dockerfile
      context: .
      args:
        - NPM_TOKEN=${NPM_TOKEN} # Add only if your project has private package
    volumes:
      - /app/node_modules/
      - ./:/app/
```
