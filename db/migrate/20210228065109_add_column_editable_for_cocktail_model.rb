class AddColumnEditableForCocktailModel < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :editable, :boolean, default: true
  end
end
