# frozen_string_literal: true

class Ingredient < ApplicationRecord
  belongs_to :material
  belongs_to :recipe

  validates :magnitude, presence: true
end
