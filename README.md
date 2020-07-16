# README

Though we mostly use Node nowadays, some of my favorite web project were built with Rails. And it's still incredibly useful for scaffolding up a quick API without dealing with Node's ORM choices, etc.


### 1) Setup Project

`rails new test_api --api --database=postgresql`
Create database in psql called niko_api with `psql create database test_api`;

### 2) Run API server
`rails server`

### 3) set up db/models
`rails g model structure title:string body:text
rails db:migrate
rails db:seed`
setup controllers and routes (see relevant files)

The below methods are set up to work in the controller/route file:
`GET http://localhost:3000/api/v1/structures
GET http://localhost:3000/api/v1/structures/1
POST http://localhost:3000/api/v1/structures {"title":"foo","body":"bar"}
PUT http://localhost:3000/api/v1/structures/1 {"title":"foo","body":"bar"}
DELETE http://localhost:3000/api/v1/structures/1`


### 4) Deploy to heroku

`git push heroku master`

`heroku run rake db:migrate`

You should be able to post and put!

-----

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
Rails 6
