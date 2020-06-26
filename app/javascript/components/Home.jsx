import React from "react";
import { Link } from "react-router-dom";

export default () => (
  <div className="col-6">
    <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container secondary-color">
      <hr className="my-4" />
        <h1 className="display-4">Food Recipes</h1>
        <p className="lead">
          A curated list of recipes for the best homemade meal and delicacies.
        </p>
        <hr className="my-4" />
        <Link
          to="/recipes"
          className="btn btn-lg custom-button"
          role="button"
        >
          View Recipes
        </Link>
        <Link
          to="/recipes"
          className="btn btn-lg custom-button"
          role="button"
        >
          View Recipes
        </Link>
        <hr className="my-4" />
        
       <div className="container d-flex">
          <div className="col-4">
            <p>Lorem</p>
          </div>
          <div className="col-4">
            <p>Lorem</p>
          </div>
          <div className="col-4">
            <p>Lorem</p>
          </div>
       </div>
      </div>
    </div>
  </div>
  </div>
  
);