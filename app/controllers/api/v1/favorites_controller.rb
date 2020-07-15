class Api::V1::FavoritesController < ApplicationController
  before_action :set_favorite, only: [ :destroy]
  
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.clients << @current_user
    @favorite = @recipe.favorites.build(favorite_params)
    @favorite.save
    response = { message: 'Recipe successfully added!'}
    render json: response, status: :created 
    
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @user = @recipe.clients
    @recipe.clients.delete(@user)
    response = { message: 'Removed from favorites successfully!'}
    render json: response
  end

  private
  def favorite_params
    params.permit(:rate)
  end
  def set_favorite
      @favorite = Favorite.find(params[:id])
  end 
end
