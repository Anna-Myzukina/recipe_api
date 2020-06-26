class Api::Version1::FavoritesController < ApplicationController

    def create
        favorite = Favorite.create!(favorite_params)
        if favorite
            render json: favorite
        else
            render json: favorite.errors
    end
    
    def destroy
        favorite = Favorite.find(params[:id])
        if favorite.destroy
            head :no_content
        else
            render json: favorite.errors
    end

    private

    def favorite_params
        params.permit(:title, :description, :score, :recipe_id)
    end
end