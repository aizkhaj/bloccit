# Linkit: a link sharing web application inspired by Reddit

I've built this one to learn the fundamentals of backend development using Ruby on Rails.

## The Build

This project is my foray into backend development with Ruby on Rails. For this app, I hosted it on Heroku. A lot of the frontend elements are done with Bootstrap UI.

In terms of functionality, there's a whole lot packed into this app:

* User authentication and authorization rules
* Data entry validation rules
* A user profile that also serves a Gravatar profile picture.
* User's ability to have favorite posts, as well as the ability to vote and comment on posts.
* ActionMailer integration to send out emails to users for new comments on their posts.

More importantly, this is also where a lot of Test Driven Development was implemented. There are RSpec unit tests for each model and controller in place.