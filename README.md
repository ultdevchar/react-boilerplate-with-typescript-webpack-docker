# React Boilerplate Project with Typescript, Webpack & Docker Configurations

This project aim to serve lightweight starter point for React with Typescript, Webpack and Docker configurations.

It has been kept as simple as possible and solutions have been presented to start the project quickly.

Production environment also can be prepared with initial configuration.

## Installation

Firstly, packages should be installed with npm.

```javascript
npm run install
```

## Usage

Project can be started for the development and production environments.

For the development environment:

```bash
npm run dev
```

After executed this command, project can be reachable from `http://localhost:4000` url. This port also can be changeble from `package.json` file.

For the production environment:

```bash
npm run build
```

After run the above command, `dist` folder will be created on the root of the project. To serve this `dist` folder as a production, this command will be enough.

```bash
docker-compose up
```

To close just run the below command.

```bash
docker-compose down
```

## Folder Structure

Some empty folders were added to build project structure in easy way.

In addition, configuration files were created with basic settings to run the project. This configurations can be extend or changed.

    ├── config                  # nginx configuration file
    ├── src
    │   ├── components          # reusable components will be located
    │   ├── model               # interfaces and types will be located
    │   ├── pages               # every single page will be located in different file or subfolder
    │   ├── routing             # routers will be located such as react-router-dom
    │   ├── store               # state management based files will be located
    │   ├── styles              # styling files will be located
    │   ├── App.tsx             # Starting point of project
    │   ├── index.html
    │   └── index.tsx
    ├── docker-compose.yml      # docker compose configuration
    ├── Dockerfile              # docker build and serve configurations
    ├── package-lock.json
    ├── package.json            # scripts and dependencies
    ├── tsconfig.json           # typescript configurations
    └── webpack.config.js       # dev and prod based configurations
