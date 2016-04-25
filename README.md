[![Build Status](https://travis-ci.org/jewei/Frognation.svg?branch=master)](https://travis-ci.org/jewei/Frognation)

# Frognation

The goal of this project is develop secure, light weight and fast prototype website for managing frogs and ponds.

## Features

* CRUD operation to frogs and ponds.
* Simple unit tests.
* PSR-2 coding standard.

## Technologies

* Slim. Lightweight PHP microframework. Least boated, just PSR-7 router + middleware. And Fast!
* Twig. Fast and secure templating engine.
* Bootstrap. For responsive website.
* Plain PHP PDO. Oh, we can add ORM/NoSQL later on ;p

## Requirement

* PHP 5.5.0 or above.
* Composer installed as global.

## Installation

    $ git clone https://github.com/jewei/Frognation.git
    $ cd Frognation
    $ composer install

#### Import the DB

Let say we create a new database called `frognation`.

    mysql> create database frognation;
    $ mysql -u username -p frognation < dump.sql

#### Configuration

Copy the environment file and config the database credentials.

    cp config/.env.example config/.env

## Testing and Code sniffing

    $ composer run-script phpunit
    $ composer run-script phpcs

## Usage

The easiest way is to run Frognation on PHP's built-in web server.

    $ php -S localhost:8000 -t public/

You can use any port you like, then spin up a web browser and head to [http://localhost:8000](http://localhost:8000).

## Screenshots

![Ponds Listing](https://raw.githubusercontent.com/jewei/Frognation/master/resources/all_ponds.png)

![A Pond](https://raw.githubusercontent.com/jewei/Frognation/master/resources/pond.png)
