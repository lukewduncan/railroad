# RailRoad

<img src="https://raw.githubusercontent.com/lukewduncan/railroad/master/app/assets/images/railroad.svg" height="75" alt="railroad logo">

A Ruby on Rails 6.0 template for fast development. The idea behind the template is faster === better. That's the reason this template uses things like Bootstrap, jQuery and RailsAdmin. The faster you can work on your actual product, the better. 

The application is optimized for Heroku deployments so setup includes use of PostgreSQL database, Figaro for storing environment variables, processing background jobs using Redis + Sidekiq and more.

## Utilizes
* Rails 6.0
* Ruby 2.7.1
* Puma Webserver
* PostgreSQL database - ready for Heroku
* Redis
* Includes Webpack

## Includes
* Authentication - [Devise](https://github.com/plataformatec/devise)
* SCSS + [Bootstrap](https://github.com/twbs/bootstrap-rubygem)(v4.0)
* [jQuery](https://github.com/rails/jquery-rails) (v3.5.1)
  * *optional - setup available for React or any other modern front-end framework with Webpack
* Environment Variable Configuration - [Figaro](https://github.com/laserlemon/figaro)
* Basic Marketing Website via StaticController
* Pamyents - [Stripe](https://github.com/stripe/stripe-ruby)
* Email - [Mailgun](https://github.com/mailgun/mailgun-ruby)
* Admin Portal - [RailsAdmin](https://github.com/sferik/rails_admin)
* Image + Document handling - [Paperclip](https://github.com/thoughtbot/paperclip) + [AWS](https://rubygems.org/gems/aws-sdk/versions/2.3.0)
  * Example within User.rb of how to set up attribute
  * Must have AWS keys within Figaro application.yml file
* Ability to rename entire app - [Rename](https://github.com/morshedalam/rename)
* Background Jobs - [Sidekiq](https://github.com/mperham/sidekiq/wiki)

## Installation Instructions
1. Clone or Fork the repo
2. `gem install bundle && bundle install`
3. `rake g rename:into new_name` will rename your app from railroad to new_name
4. `rake db:create && rake db:migrate` to set up and create database including User table
5. `bundle exec figaro install` to use Figaro ([Example](https://github.com/laserlemon/figaro#example))
6. To access the `RailsAdmin` section of site, set the `superuser` attribute on your user account to `true`

## Working locally
```sh
# Start development server
rails s

# For background jobs
redis-server
bundle exec sidekiq

# Start rails console
rails c
```