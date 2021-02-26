class RenameImageColumnCocktailModel < ActiveRecord::Migration[6.1]
  def change
    rename_column :cocktails, :image, :photo
  end
end
