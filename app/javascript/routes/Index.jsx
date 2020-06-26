import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home from "../components/Home";
import RecipesList from "../components/RecipesList";
import Recipe from "../components/Recipe";
import NewRecipe from "../components/NewRecipe";
import SearchRecipe from "../components/SearchRecipe";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Home} />
      <Route path="/recipes" exact component={RecipesList} />
      <Route path="/recipe/:id" exact component={Recipe} />
      <Route path="/recipe" exact component={NewRecipe} />
      <Route path="/recipe" exact component={SearchRecipe} />
    </Switch>
  </Router>
);