# Tea Shop Server

API
---
Load [`swagger.yaml`](https://github.com/sagimann/tea-shop-ui-test/blob/master/swagger.yaml) into [`Swagger Editor`](http://editor.swagger.io/#/) to review the API or check the [`Tea Shop UI project exercise info`](https://github.com/sagimann/tea-shop-ui-test#the-exercise)

Prerequisites
-------------

Tested on Ruby on Rails 5.1.4

* [`Rails`](http://rubyonrails.org/)

Architecture
------------

* Rails server on port 3000
* Local sqlite3 development database
* Seed data available under [`db/seeds.rb`](https://github.com/sagimann/iangels_teashop_server/blob/master/db/seeds.rb)

Setup
-----

* `rails db:reset`

Run
---

* `cd <project root>`
* `rails server`
* Start the [`Tea Shop UI`](https://github.com/sagimann/tea-shop-ui-test) on the same machine

Tests
-----
* Unit tests for the TeaItem entity
* Integration tests for the TeaController class
