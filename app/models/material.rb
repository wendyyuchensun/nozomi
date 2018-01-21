# frozen_string_literal: true

class Material < ApplicationRecord
  belongs_to :unit
  has_many :ingredients

  validates :name, precense: true
end
