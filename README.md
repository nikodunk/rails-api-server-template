# README

1) `rails new niko_api --api --database=postgresql`

2) create database in psql called niko_api with `psql create database niko_api`;

3) `rails server`


GET http://localhost:3000/api/v1/structures
GET http://localhost:3000/api/v1/structures/1
POST http://localhost:3000/api/v1/structures {"title":"foo","body":"bar"}
PUT http://localhost:3000/api/v1/structures/1 {"title":"foo","body":"bar"}
DELETE http://localhost:3000/api/v1/structures/1


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
Rails 6


* System dependencies

* Configuration



* Database creation

* Database initialization



* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
