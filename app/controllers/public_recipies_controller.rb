class PublicRecipiesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_food, only: %i[ show ]
  def index
    @public_recipie = Public_Recipy.all
  end

  def show
  end
end
