class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 0 } 
  validates :prep_time, numericality: { greater_than: 0 }
  validates :number_of_pers, numericality: { greater_than: 0 }
end
