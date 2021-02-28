class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new()
  end

  def show
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: "Cocktail was successfully created"
    else 
      render :new
    end
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail), notice: "Cocktail was successfully updated"
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path, notice: "Cocktail was successfully deleted"
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :price, :prep_time, :number_of_pers, :photo, :editable)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end
