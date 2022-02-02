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

# Rails API

$ rails new wildlife-tracker -d postregsql -T
$ cd wildlife-tracker
$ git remote add origin https://github.com/learn-academy-2021-echo/wildlife-tracker-halebeau
$ git checkout -b main
$ git add .
$git commit -m "initial commit"
$git push origin main

# App setup

$ rails db:create
$ bundle add rspec-rails
$ rails generate rspec:install
$ rails server