# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Contentful::Recipe.all.load
  end

  def show
    @recipe = Contentful::Recipe.find(show_params[:id])
  end

  private

  def show_params
    params.permit(:id)
  end
end
