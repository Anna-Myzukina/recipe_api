import React from "react";
import { Link } from "react-router-dom";

class NewRecipe extends React.Component {
    constructor(props) {
      super(props);
      this.state = {
        name: "",
        ingredients: "",
        description: "",
        calories: []
      };
  
      this.onChange = this.onChange.bind(this);
      this.onSubmit = this.onSubmit.bind(this);
      this.stripHtmlEntities = this.stripHtmlEntities.bind(this);
    }
  
    stripHtmlEntities(str) {
      return String(str)
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;");
    }
  
    onChange(event) {
      this.setState({ [event.target.name]: event.target.value });
    }
  
    onSubmit(event) {
      event.preventDefault();
      const url = "/api/version1/recipes/create";
      const { name, ingredients, description, calories } = this.state;
  
      if (name.length == 0 || ingredients.length == 0 || description.length == 0 || calories.length == 0 )
        return;
  
      const body = {
        name,
        ingredients,
        description: description.replace(/\n/g, "<br> <br>"),
        calories
      };
  
      const token = document.querySelector('meta[name="csrf-token"]').content;
      fetch(url, {
        method: "POST",
        headers: {
          "X-CSRF-Token": token,
          "Content-Type": "application/json"
        },
        body: JSON.stringify(body)
      })
        .then(response => {
          if (response.ok) {
            return response.json();
          }
          throw new Error("Network response was not ok.");
        })
        .then(response => this.props.history.push(`/recipe/${response.id}`))
        .catch(error => console.log(error.message));
    }
  
    render() {
      return (
        <div className="container mt-5">
          <div className="row">
            <div className="col-sm-12 col-lg-6 offset-lg-3">
              <h1 className="font-weight-normal mb-5">
                Add a new recipe to our awesome recipe collection.
              </h1>
              <form onSubmit={this.onSubmit}>
                <div className="form-group">
                  <label htmlFor="recipeName">Recipe name</label>
                  <input
                    type="text"
                    name="name"
                    id="recipeName"
                    className="form-control"
                    required
                    onChange={this.onChange}
                  />
                </div>
                <div className="form-group">
                  <label htmlFor="recipeIngredients">Ingredients</label>
                  <input
                    type="text"
                    name="ingredients"
                    id="recipeIngredients"
                    className="form-control"
                    required
                    onChange={this.onChange}
                  />
                  <small id="ingredientsHelp" className="form-text text-muted">
                    Separate each ingredient with a comma.
                  </small>
                </div>
                <label htmlFor="description">Description</label>
                <textarea
                  className="form-control"
                  id="description"
                  name="description"
                  rows="5"
                  required
                  onChange={this.onChange}
                />
                <label htmlFor="recipeName">Calories</label>
                  <input
                    type="number"
                    name="calories"
                    id="calories"
                    className="form-control"
                    required
                    onChange={this.onChange}
                  />
                <button type="submit" className="btn custom-button mt-3">
                  Create Recipe
                </button>
                <Link to="/recipes" className="btn btn-link mt-3">
                  Back to recipes
                </Link>
              </form>
            </div>
          </div>
        </div>
      );
    }
  
  }
  
  export default NewRecipe;