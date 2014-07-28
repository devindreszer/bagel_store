# Models

Preliminary models

## user

* has_many :order_items
* has_many :orders
* username
* email
* password (encrypted)

## menu_item

* has_many :ingredients, through :options
* name
* price
* description
* is_bulk

## ingredient

* has_many :menu_items, through :options
* name
* price

## options

* belongs_to :base
* belongs_to :ingredient
* has_many :order_items, through :selections
* is_addon

## selection

* belongs_to :option
* belongs_to :order_item

## order_item

* has_many options, through :selections
* belongs_to :user
* belongs_to :menu_item
* belongs_to :order
* price

## order

* belongs_to :user
* has_many :order_items
* price
