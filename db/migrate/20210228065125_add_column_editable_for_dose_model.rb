class AddColumnEditableForDoseModel < ActiveRecord::Migration[6.1]
  def change
    add_column :doses, :editable, :boolean, default: true
  end
end
