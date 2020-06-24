# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = contentful.entries(content_type: 'recipe')
  end

  def show
    @recipe = contentful.entry(show_params[:id])
  end

  private

  def show_params
    params.permit(:id)
  end
end
