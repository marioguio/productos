class CategoriesController < ApplicationController
  def index
   @categorias = Category.all
  end
end
