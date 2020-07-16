# Final Capstone Project: Find Your Recipe


## Description


In this project I was Created models with associations and implement all requested features for users, recipes and favourites. Added authentication as described in requirements.

## Live version

[Find your Recipe](https://morning-ridge-74742.herokuapp.com/)


## API Documentation
["Recipe API"](https://documenter.getpostman.com/view/11701134/T17KbkNx?version=latest)

- This API provides data for recipes, users can sign up/log in, create/ update/ delete recipes, and add to favorites.

### Sample test

- [ ] User can sign up: [POST] `http://localhost:3000/auth/sign_up`

      {
      "name": "annamuz",
      "email": "annamuz@gmail.com",
      "password": "321123",
      "password_confirmation": "321123",
      "admin": true
      }

- [ ] User can login: [POST] `http://localhost:3000/auth/login` 

      {
      “auth”: {
      "email": "annamuz@gmail.com",
      "password": "321123"
        }
      }

- [ ] User can edit account: [PATCH] `http://localhost:3000/api/v1/users/:id` 

- [ ] User can delete account: [DELETE] `http://localhost:3000/api/v1/users/:id` 

- [ ] User can create recipes:  [POST]   `http://localhost:3000/api/v1/recipes`

      {
      "title": "Pizza with mashroomes",
      "ingredients": "1 tablespoon olive oil, 8 ounces mushrooms, 1/2 medium red onion, 2 cloves garlic, 1 cup marinara sauce, ",
      "description": "Preheat the oven to 450 degrees F. Heat the oil in a skillet over a medium heat. Add the mushrooms and onions and cook until tender and most of the liquid evaporates, about 5 minutes. Stir in the garlic and remove from the heat. Place the pizza crust on a baking sheet. Spread the sauce over the crust leaving a 1-inch border. Top with the mushroom mixture and sun-dried tomatoes. Sprinkle with the mozzarella and Parmesan cheeses. Bake until the crust is crisp and the cheese is nicely melted, about 13 minutes. Sprinkle with basil, cut into 8 slices and serve.",
      "calories": 350,
      "user_id": 1
      }


- [ ] User can update recipes:  [PATCH]   `http://localhost:3000/api/v1/recipes/:id`


- [ ] User can delete recipes:  [DELETE]   `http://localhost:3000/api/v1/recipes/:id`

- [ ] User can get all recipes:  [GET]   `http://localhost:3000/api/v1/recipes/:id`

- [ ] User can add recipes to favorites (create list from favorite recipes):  [POST]   `http://localhost:3000/api/v1/recipes/:recipe_id/favorite`

            {
            "rate": 3

            }



- [ ] User can delete recipes from favorites (unfavorite recipe):  [DELETE]   `http://localhost:3000/api/v1/recipes/:recipe_id/unfavorite`

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

## Show your support

- [ ] Give a ⭐️ if you like this project!

## 📝 License

* [ ] See [LICENSE.md]() for details.

## Authors

👤 **Author1**
* GitHub: [Anna Muzykina](https://github.com/Anna-Myzukina)
* LinkedIn: [Anna Muzykina](https://www.linkedin.com/in/anna-muzykina/)
* email: anna.muzykina83@gmail.com