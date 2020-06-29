import React from 'react';


const SearchRecipe = ({name, calories, image, ingredients}) => {
    return(
        <div>
            <h1 className>{name}</h1>
            <ol>
                {ingredients.map(ingredient => (
                    <li>{ingredient.text}</li>
                ))}
            </ol>
                <p>{ description }</p>
            <p>{calories}</p>
            <img src={image} alt=""></img>
        </div>
    )
}

export default SearchRecipe;