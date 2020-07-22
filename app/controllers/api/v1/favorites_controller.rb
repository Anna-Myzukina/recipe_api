class Api::V1::FavoritesController < ApplicationController
  before_action :set_favorite, only: [:destroy]

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = @recipe.favorites.build(favorite_params)
    @favorite.client_id = @current_user.id
    @favorite.save
    response = { message: 'Recipe successfully added!' }
    render json: response, status: :created
  end

  def destroy
  
    @favorite.destroy
    response = { message: 'Removed from favorites successfully!' }
    render json: response
  end

  private

  def favorite_params
    params.permit(:rate)
  end

  def set_favorite
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = @recipe.favorites.find(params[:id])
  end
end
