# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...




1] rails new project_management_demo
2] Bundle
3] rails generate model Project
4] rails generate model Teadlead
5] rake db:migrate
6] rails generate controller Project
7] rake routes

8] rails generate migration AddCountViewToProjects 
9] rake db:migrate version=20180830180558

RUN Command - 
DATABASE_HOST=localhost DATABASE_USERNAME=root DATABASE_NAME=project_management rails s
