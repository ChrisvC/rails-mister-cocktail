class Ingredient < ApplicationRecord
  has_namy :doses
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end
