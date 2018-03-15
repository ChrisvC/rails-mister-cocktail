class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, uniqueness: { scope: :ingredient }
  validates :description, presence: true
end
