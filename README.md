<div align="left">
    <img src="https://uploads-ssl.webflow.com/64106628fe8d9d429a9e5610/66715794666a62146afe19c5_logo_poziom_bez_tla.png" alt="tokenguard" height="80" />
    </div>

## Analyze data from your Ink! smart contracts

Tokenguard was founded to help web3 projects grow and build utility around their products. We know how to build successful dApps & ecosystems solving real problems with blockchain technology and we want to allow the whole industry to follow this path.

[View Live App](https://app.tokenguard.io) 

[Learn more about Tokenguard](https://tokenguard.io/about)

### Social channels:
<div style="display: flex; gap: 24px;">
  <a href="https://x.com/Tokenguard_io"><img src="https://uploads-ssl.webflow.com/6645e490e589077daad8a58e/667193cb5fbe25aecdd789ce_twitter.png" style="height: 24px"></a>
  <a href="https://www.linkedin.com/company/tokenguard-io"><img src="https://uploads-ssl.webflow.com/6645e490e589077daad8a58e/667193cbdf5adefa16664be0_linkedin.png" style="height: 24px"></a>
  <a href="https://t.me/tokenguard_io"><img src="https://uploads-ssl.webflow.com/6645e490e589077daad8a58e/667193cb5a75346d735fe5bf_telegram.png" style="height: 24px"></a>
</div>

### Supported blockchains:
<div style="display: flex; gap: 16px;">
  <img src="https://uploads-ssl.webflow.com/6645e490e589077daad8a58e/667193cb305eadd978bfb9f5_azero.png" style="height: 40px">
  <img src="https://uploads-ssl.webflow.com/6645e490e589077daad8a58e/667193cb70cf38587b87f488_moonbeam.png" style="height: 40px">
  <img src="https://uploads-ssl.webflow.com/6645e490e589077daad8a58e/667193cdaa25d6c28bfea28f_astar.png" style="height: 40px">
</div>

## dApp Marvels 💎

Welcome to the dApp Marvels repository! This repository consists of handy setup scripts to help you get started with dApp Marvels - an on-chain analytics tool designed for Ink! dApps builders to support their growth and operations through in-depth metrics and analytics of on-chain user behavior.

dApp Marvels will help to Polkadot builders create their dApps & protocols faster and easily analyze data coming from their smart contracts without additional hassle.
  
This guide covers how to set up and run the project for Substrate-bases chains. This respository is umbrella part of a bigger system consisting of 3 components + corresponding databases.

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
- **dApp decoding**: with user-provided contract ABIs this app is able to index decoded interactions with the dApp
- **dApp indexing**: automated deployments of subsquid indexers
- **API Reading Mechanism**: Connect frontend visualizations with underlying data through a RESTful API built with NodeJS and Express.
- **Data Storage**: Store visualization and dashboard-related data in MongoDB for efficient retrieval and management.
- **Scalability**: Built with scalability in mind to handle large datasets and user traffic effectively.
- **Metrics Visualisation**: Visualize data from raw sources using customizable visualizations such as line charts, bar charts, pie charts, and more.
- **Dashboard Layout**: Create, save, modify, and delete dashboards with drag-and-drop functionality. Customize dashboard layouts with captions, titles, and links.
- **User-Friendly Interface**: Intuitive user interface for seamless dashboard creation and customization.

### Use examples
<img src="https://github.com/tokenguardio/dapp-marvels/assets/56157619/977843b7-f9c3-4b97-a3c5-097ca7c3e0fc" style="height: 300px">
<img src="https://github.com/tokenguardio/dapp-marvels/assets/56157619/be60d7fb-581b-4b81-8414-64029d6c5a1d" style="height: 300px">
<img src="https://github.com/tokenguardio/dapp-marvels/assets/56157619/87dda95e-721b-49a1-8ae6-c27ba8c76a24" style="height: 300px">
<img src="https://github.com/tokenguardio/dapp-marvels/assets/56157619/19069b6c-4db6-49aa-b75c-b43849049977" style="height: 300px">
<img src="https://github.com/tokenguardio/dapp-marvels/assets/56157619/aa9780df-e363-4d94-9fab-9f8dd9cc0e1a" style="height: 300px">


### Getting started

#### Fastest
If you just want to start the project to see how it works, just run `docker-compose up` and it will pull recent images of services and run the app.  

#### For devs
For simple and smooth application rollout for further customization and development purposes you can pull all required repositories into fresh directory using a script provided in this repository: 
```
./setup-env.sh
```

The script pulls repositories in locations expected by `docker-compose-dev.yml` file enclosed in this repository.
```
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
docker-compose -f docker-compose-dev.yml up
```
After the environment starts, you should be able to see the frontend app of dApp Marvels at [localhost:5173](http://localhost:5173)

### Cleanup
To clean up environment, simply run 
```
./cleanup.sh
```

### Tech Stack

- **Backend Framework**: NodeJS with Express
- **Database**: MongoDB, PostgreSQL
- **API Documentation**: OpenAPI
- **Development Tool**: Docker
- **Frontend Framework**: ReactJS, TypeScript, ViteJS
- **Data Storage**: MongoDB
- **Visualization Library**: Apache ECharts

### Contributing

We encourage contributions from the community! If you'd like to contribute to the Tokenguard Dashboard Builder Server, please refer to our [contribution guidelines](CONTRIBUTING.md) for more information.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
