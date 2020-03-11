# Jungle

Jungle is a small e-commerce web application built with Rails 4.2.
Mock purchases, products, categories


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* RSpec

## Screenshots
!["home page"](https://github.com/BenjaminVincent/Jungle/blob/master/docs/products-home-page.png?raw=true)
!["admin products"](https://github.com/BenjaminVincent/Jungle/blob/master/docs/admin-products.png?raw=true)
!["cart"](https://github.com/BenjaminVincent/Jungle/blob/master/docs/this-is-a-good-price.png?raw=true)