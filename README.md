# Recipes portal

View a list of recipes and click on any recipe for details!

## Setting up on your local machine

* Ensure [Docker compose](https://docs.docker.com/compose/) is installed
* Clone this repository
* Add a file called `.env` and add add the correct environment variables using `.env.template` as an example
* Build the container with `docker-compose build`

## Usage

* To run this app, run `docker-compose up` and navigate to http://localhost:3000
* To run tests, run `docker-compose run web rspec`
