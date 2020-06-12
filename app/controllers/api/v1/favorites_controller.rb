class Api::V1::FavoritesController < ApplicationController
  before_action :set_favorite, only: [ :destroy]
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.clients << @current_user

    response = { message: 'Recipe successfully added!'}
    render json: response
 
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @user = @recipe.clients
    @recipe.clients.delete(@user)
    response = { message: 'Removed from favorites successfully!'}
    render json: response
  end

  private
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end
    
end
