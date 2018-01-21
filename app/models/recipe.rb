# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :appliance
  has_many :ingredients
  has_many :procedures
  has_many :plan, through: :procedures

  validates :name, precense: true
end
