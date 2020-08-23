# Recommended FeaturedServer

This service is part of a larger project that implements a site with similar appearance to Target. The site utilizes service oritented architecture to increase flexibility, scalability, and reliablility. The final project consists of 5 standalone services, which can be easily combined utilizing a reverse Proxy. The five services are Main Item Display, Search/Header/Footer, About This Item, Recommended / Featured Items, and Reviews.

## Installation & Startup

Use npm to install required packages and compile necessary files

```zsh
npm run setup
```

This service is configured to run locally on port 5001 when not deployed on AWS.
If running locally, use npm start to run start running the server

```zsh
npm start
```

## Service Overview

This Service is in charge of rendering the Recommended / Featured Items Display to the screen. The Service includes a tabbed display to toggle between similar items and featured items. Aditionally there is a recommended items display. When combined with other microservices, each item is clickable to load the related item page.

The Tech Stack consists of React for the client side, Node/Express for the server, and MySQL for the database.
