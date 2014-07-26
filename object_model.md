# Models

Preliminary models

## user

* has_many :order_items
* has_many :orders
* username
* email
* password (encrypted)

## base

* has_many :ingredients through :base_ingredient
* name
* price
* description

## ingredient

* has_many :bases through :base_ingredients
* name
* price

## base_ingredient

* belongs_to :base
* belongs_to :ingredient
* has_many :order_items through :selections
* base_id
* ingredient_id
* is_addon

## selection

* belongs_to :base_ingredient
* belongs_to :order_item
* base_ingredient_id
* order_item_id

## order_item

* has_many base_ingredients through :selections
* belongs_to :user
* belongs_to :base
* belongs_to :order
* user_id
* base_id
* order_id
* price

## order

* belongs_to :user
* has_many :order_items
* user_id
* price

