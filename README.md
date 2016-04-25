# Frognation

The goal of this project is develop secure, light weight and fast prototype website for managing frogs and ponds.

## Features

* CRUD operation to frogs and ponds.
*

## Technologies

* Slim. Lightweight PHP microframework. Least boated, just PSR-7 router + middleware. And Fast!
* Twig. Fast and secure templating engine.
* Bootstrap. For responsive website.
* Plain PHP PDO. Oh, we can add ORM/NoSQL later on ;p

## Installation

    $ git clone https://github.com/jewei/Frognation.git
    $ cd frognation
    $ composer install

#### Import the DB

    mysql> create database frognation;
    $ mysql -u username -p frognation < dump.sql

#### Configuration

Copy the environment file and config the database credentials.

    cp config/.env.example config/.env

## Testing and Code sniffing

    $ phpunit
    $ phpcs --standard=PSR2 src/

## Usage

The easiest way is to run Frognation on PHP's built-in web server.

    $ php -S localhost:8000 -t public/

You can use any port you like, then spin up a web browser and head to http://localhost:8000.
