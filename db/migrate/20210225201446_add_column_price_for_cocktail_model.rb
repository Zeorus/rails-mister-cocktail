class AddColumnPriceForCocktailModel < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :price, :float, default: 1.0
  end
end
