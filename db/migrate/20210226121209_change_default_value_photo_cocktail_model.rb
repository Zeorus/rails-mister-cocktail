class ChangeDefaultValuePhotoCocktailModel < ActiveRecord::Migration[6.1]
  def change
    change_column :cocktails, :photo, :string, default: "jppkigl7ct9iyauqnvwr"
  end
end
