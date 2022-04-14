class ShoppingListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shopping_list, only: %i[show]
  def index
    @public_recipie = PublicRecipe.all
  end

  def show
  end
end
