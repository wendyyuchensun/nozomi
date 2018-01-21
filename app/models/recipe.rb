# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :appliance
  has_many :ingredients

  validates :name, precense: true
end
