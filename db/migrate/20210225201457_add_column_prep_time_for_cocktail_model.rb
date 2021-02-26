class AddColumnPrepTimeForCocktailModel < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :prep_time, :integer, default: 5
  end
end
