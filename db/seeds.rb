# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
recipes = Recipe.create([
    {
        title: "Pizza with mashroomes",
        ingredients: "1 tablespoon olive oil, 8 ounces mushrooms, 1/2 medium red onion, 2 cloves garlic, 1 cup marinara sauce, ",
        description: "Preheat the oven to 450 degrees F.
        Heat the oil in a skillet over a medium heat. Add the mushrooms and onions and cook until tender and most of the liquid evaporates, about 5 minutes. Stir in the garlic and remove from the heat.
        Place the pizza crust on a baking sheet. Spread the sauce over the crust leaving a 1-inch border. Top with the mushroom mixture and sun-dried tomatoes. Sprinkle with the mozzarella and Parmesan cheeses. Bake until the crust is crisp and the cheese is nicely melted, about 13 minutes. Sprinkle with basil, cut into 8 slices and serve.",
        calories: 350
    },
    {
      title: "Omelet Favorite",
      ingredients: "1 tablespoon unsalted butter, divided
      1 1/2 ounces white mushrooms, thinly sliced (about 3/4 cup),
      3/4 cup microgreens,
      3 large eggs",
      description: "description 2",
      calories: 335.37
    },
    {
      title: "French in a Flash",
      ingredients: "1/8 teaspoon saffron, 1 teaspoon hot water, 1 tablespoon mayonnaise, 
      Salt and pepper, 1/3 cup (1 1/4 ounces) lobster tail meat, thinly sliced, 
      1 tablespoon microgreens, 
      2 slices white toast, cut into 3-inch rounds",
      description: "description test 3",
      
      calories: 312
    },
    {
      title: "Beet and Feta Salad",
      ingredients: "4 small canned whole beets (1 to 1 1/2 inches in diameter), drained
      1 teaspoon fresh lemon juice, 1/8 teaspoon salt, 
      1 tablespoon plus 1 teaspoon extra-virgin olive oil, 
      1 tablespoon plus 1 teaspoon extra-virgin olive oil,
      1 tablespoon crumbled feta,
      3/4 cup microgreens or mesclun (mixed baby salad greens)",
      description: "description test 4",
      calories: 312
    }
  ])
  
  users = User.create([
    {
      name: "Anna",
      email: "anna@gmail.com",
      password_digest: 123456
    },
    {
        name: "admin",
        email: "admin@gmail.com",
        password_digest: 123456
    }
  ])
