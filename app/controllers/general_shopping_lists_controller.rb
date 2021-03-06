class GeneralShoppingListsController < ApplicationController
  before_action :authenticate_user!
  include GeneralShoppingListsHelper

  def index
    @recipes = current_user.recipes
    @foods = foods_join
    @total_price = 0
    @recipes.each do |recipe|
      @total_price += recipe.total_price
    end
  end
end
