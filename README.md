== README

# Bob's Bagels

E-Commerce site for bagel restaurant

Check out the live app on [Heroku](http://bobsbagels.herokuapp.com)

## Features

* Guest and registered users can access a full menu and an online system for ordering either:
  - (1) bulk bagels, or
  - (2) customizable bagel sandwiches (toppings can be added or removed from the custom option, which affects the price of the sandwich)
* Users can create orders, change them before paying, and finally pay by credit card (payment requires login authentication)

## Description

This project was created to meet requirements for Project 2 in General Assembly's Web Development Immersive Program (June 2014).

Intended to test our ability to work in groups of three create a functional Rails app on a specified topic.

This project was conceptualized, scoped and developed in one week.

## Installation

This app requires publishable and secret keys from Stripe.com

To begin:

* Fork and clone
* Create .env file
* Add .env to .gitignore file
* Add secret key and publishable keys to .env file with format
SECRET_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
PUBLISHABLE_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  - Note that 'test' keys will be different from 'live' keys in production
* Run bundle
* Run rake db:setup
* Enjoy!
