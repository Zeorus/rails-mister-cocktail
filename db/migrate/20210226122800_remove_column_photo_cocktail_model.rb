class RemoveColumnPhotoCocktailModel < ActiveRecord::Migration[6.1]
  def change
    remove_column :cocktails, :photo
  end
end
