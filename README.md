# Vite-template-ts-clean

This is a cleand version of the official typescript template form Vite. This template also extends with setting up a developing and production enviorment with Docker and Nginx (See all the commands in the Makefile).

## Usage

```
npx degit git@github.com:JesperBry/vite-template-ts-clean.git [my-project]

npm install
npm run dev
```

## Available Scripts

### NPM scripts

```
$ npm run dev
$ npm run build
$ npm run build:dev
$ npm run build:prod
$ npm run preview
```

### Make commands (starting docker)

NODE_V (setting spesific version for node, used by nvmrc and docker image) is a optional argument (default: 18.12.1) for both make build-dev and make build-prod. e.g. make build-dev NODE_V=14.17.5

Starting dev (localhost:5173)

```
$ make build-dev
$ make run-dev
```

Starting prod (starting nginx at localhost:8080)

```
$ make build-prod
$ make run-prod
```

## Project structure

```
|____node_modules
|____public
| |____vite.svg
|____src
| |____assets
| |____components
| | |____styles
| |____hooks
| |____utils
| |____App.css
| |____App.tsx
| |____index.css
| |____main.tsx
| |____vite-env.d.ts
|____.dockerignore
|____.gitignore
|____.nvmrc
|____Dockerfile
|____Makefile
|____nginx.conf
|____package-lock.json
|____package.json
|____README.md
|____tsconfig.json
|____tsconfig.node.json
|____vite.config.json
```
