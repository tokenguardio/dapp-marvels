## dApp Marvels

Welcome to the dApp Marvels repository! This repository consists of handy setup scripts to help you get started with dApp Marvels.  
  
This guide covers how to set up and run the project for Aleph Zero chain. This respository is umbrella part of a bigger system consisting of 3 components + corresponding databases.

1. [dashboard-creator-server](https://github.com/tokenguardio/dashboard-creator-server/) - the backend service storing information about built dashboards and queries
2. [dashboard-creator-client](https://github.com/tokenguardio/dashboard-creator-client/) - frontend app
3. [db-api](https://github.com/tokenguardio/db-api) - REST interface between PostgreSQL database and backend service.  
4. [subsquid-indexer](https://github.com/tokenguardio/substrate-squids/blob/wasabi/) - custom squid indexer suited for decoded ABIs for dApps
  
To fully function backend service needs mongodb to store dashboard configuration, layout and displayed dashboard elements and PostgreSQL database to store indexing data pulled by subsquid indexer.

## Prerequisites

Before you begin, make sure you have the following installed on your system:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Features

- **API Reading Mechanism**: Connect frontend visualizations with underlying data through a RESTful API built with NodeJS and Express.
- **Data Storage**: Store visualization and dashboard-related data in MongoDB for efficient retrieval and management.
- **Scalability**: Built with scalability in mind to handle large datasets and user traffic effectively.


### Getting started

For simple and smooth application rollout you can pull all required repositories into fresh directory using a script provided in this repository: 
```
./setup-env.sh
```

The script pulls repositories in locations expected by `docker-compose.yml` file enclosed in this repository.
```
mkdir dapp-analytics
cd dapp-analytics
git clone https://github.com/tokenguardio/dashboard-creator-client.git
cd dashboard-creator-client
git checkout dapp-analytics-dev
cd ..
git clone https://github.com/tokenguardio/dashboard-creator-server.git
cd dashboard-creator-server
git checkout dapp-analytics-dev
cd ..
git clone https://github.com/tokenguardio/db-api.git
cd db-api
git checkout dev
cd ..
```
After the script is done, all you have to do is to let docker-compose run and build/pull all required images.
```
docker-compose up
```
After the environment starts, you should be able to see the frontend app of dApp Marvels at [localhost:5173](http://localhost:5173)

### Tech Stack

- **Backend Framework**: NodeJS with Express
- **Database**: MongoDB, PostgreSQL
- **API Documentation**: OpenAPI
- **Development Tool**: Docker

### Contributing

We encourage contributions from the community! If you'd like to contribute to the Tokenguard Dashboard Builder Server, please refer to our [contribution guidelines](CONTRIBUTING.md) for more information.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
