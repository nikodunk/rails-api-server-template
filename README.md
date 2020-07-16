# README

1) `rails new niko_api --api --database=postgresql`
Create database in psql called niko_api with `psql create database niko_api`;

2) `rails server`

3)
set up db/models:
`rails g model structure title:string body:text
rails db:migrate
rails db:seed`
setup controllers and routes

GET http://localhost:3000/api/v1/structures
GET http://localhost:3000/api/v1/structures/1
POST http://localhost:3000/api/v1/structures {"title":"foo","body":"bar"}
PUT http://localhost:3000/api/v1/structures/1 {"title":"foo","body":"bar"}
DELETE http://localhost:3000/api/v1/structures/1




4)

Deploy to heroku, then:

`heroku run rake db:migrate`

it works!

-----

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
Rails 6
