class AddColumnNumberOfPersForCocktailModel < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :number_of_pers, :integer, default: 2
  end
end
