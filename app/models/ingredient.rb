class Ingredient < ApplicationRecord
  belongs_to :material

  validates :magnitude, precense: true
end
