# Final Capstone Project: Find Your Recipe


## Description

`Users, recipes, favourit recipe.`

In this project we Create models with associations and implement all requested features for users, recipes and favourites. Add authentication as described in requirements.






 

## Getting started
- [ ] To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

- [ ] Next, migrate the database:

```
$ rails db:create
```

```
$ rails db:migrate
```





## Features

- [ ] The user logs in the app, only by typing the username (a proper authenticated login is not a mandatory requirement, but it is in the nice-to-have list)

- [ ] The user is presented with a list of houses: apartment, house, room, etc.

- [ ] When a user selects a house, detailed information about the house is presented and the possibility add it to favourites

- [ ] The user can access a list of favourite apartments

* The database should have at least 2 tables — in this example, houses and favourites, i.e., the favourites can be accessed by all users unless you implement a proper user authentication (more on this later). To create ERD(Entity Relationship Diagram) diagram, it`s image of your future database, I used online tool [lucidchart](https://www.lucidchart.com/) to draw that diagram, create folder "docs" and add to folder that image with diagram. Follow this video to understand how it works [Entity Relationship Diagram (ERD) Tutorial - Part 1](https://www.youtube.com/watch?v=QpdhBUYk7Kk&vl=en)
* Watch next video to be familiar with Primary and Foreign Keys [Entity Relationship Diagram (ERD) Tutorial - Part 2](https://www.youtube.com/watch?v=-CuY5ADwn24)

Here is a screenshot with example of such image with diagram:
![screen](#)


## Environment:

- [ ] ruby '2.7.0'
- [ ] 'rails', '~> 6.0.3', '>= 6.0.3.1'
* 
##### I recommended to add next gems:

gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'fast_jsonapi'
gem 'bootsnap', '>= 1.4.2', require: false
        
 
 Than use next command in your terminal
 
      $  bundle install
      $  bundle update


## Run tests

- [ ] If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
- [ ] Finally, run the test suite to verify that everything is working correctly:

```
$ rails generate rspec:install
```

```
$ rspec
```

### Testing [everydayrailsrspec](https://leanpub.com/everydayrailsrspec/read_sample)

## Show your support

- [ ] Give a ⭐️ if you like this project!

## 📝 License

* [ ] See [LICENSE.md]() for details.

## Authors

👤 **Author1**
* GitHub: [Anna Muzykina](https://github.com/Anna-Myzukina)
* LinkedIn: [Anna Muzykina](https://www.linkedin.com/in/anna-muzykina/)
* email: anna.muzykina83@gmail.com
