class Api::V1::FavoritesController < ApplicationController
  before_action :set_favorite, only: [ :destroy]
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.clients << @current_user
    if @favorite.save
      render json: @favorite, status: :created
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @favorite.destroy
  end

  private
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end
    
end
