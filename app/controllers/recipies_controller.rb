class RecipiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipy, only: %i[ show edit update destroy ]
  def index
    @recipies = Recipy.all
  end

  def show
  end

  def new
    @recipy = Recipy.new
  end

  def edit
  end

  def create
    user = current_user
    @recipy = user.recipies.new(recipy_params)
    respond_to do |format|
      if @recipy.save
        format.html { redirect_to recipy_url(@recipy), notice: "Recipy is successfully created" }
        format.json { render :show, status: :created, location: @recipy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json {render json: @recipy.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @recipy.update(recipy_params)
        format.html { redirect_to recipy_url(@recipy), notice: 'recipy was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipy.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipy.destroy

    respond_to do |format|
      format.html { redirect_to recipies_url, notice: 'Recipy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipy
    @recipy = recipy.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipy_params
    params.require(:recipy).permit(:name, :measurement_unit, :price)
  end
end
