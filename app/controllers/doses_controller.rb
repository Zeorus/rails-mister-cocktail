class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    unless @dose.ingredient_id.nil?
      @ingredient = Ingredient.find(@dose.ingredient_id)
    end
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: "Ingredient was successfully added"
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.find(params[:cocktail_id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail), notice: "Ingredient was successfully deleted"
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
