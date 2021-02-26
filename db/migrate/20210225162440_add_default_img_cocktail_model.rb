class AddDefaultImgCocktailModel < ActiveRecord::Migration[6.1]
  def change
    change_column :cocktails, :image, :string, default: "missing_img.jpg"
  end
end
