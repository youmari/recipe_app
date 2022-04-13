class RecipiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipy, only: %i[show edit update destroy]

  # GET /recipies or /recipies.json
  def index
    @recipies = Recipy.all
  end

  # GET /recipies/1 or /recipies/1.json
  def show; end

  # GET /recipies/new
  def new
    @recipy = Recipy.new
  end

  # GET /recipies/1/edit
  def edit; end

  # POST /recipies or /recipies.json
  def create
    user = current_user
    @recipy = user.recipies.new(recipy_params)
    respond_to do |format|
      if @recipy.save
        format.html { redirect_to recipy_url(@recipy), notice: 'Recipy is successfully created' }
        format.json { render :show, status: :created, location: @recipy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipies/1 or /recipies/1.json
  def update
    respond_to do |format|
      if @recipy.update(recipy_params)
        format.html { redirect_to recipy_url(@recipy), notice: 'Recipy was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipies/1 or /recipies/1.json
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
    @recipy = Recipy.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipy_params
    params.require(:recipy).permit(:name, :preparation_time, :cooking_time, :description)
  end
end
