class AddQuantityColumnDoseModel < ActiveRecord::Migration[6.1]
  def change
    add_column :doses, :quantity, :string
  end
end
