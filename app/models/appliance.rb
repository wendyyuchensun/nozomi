# frozen_string_literal: true

class Appliance < ApplicationRecord
  has_many :recipes
  has_many :procedures
  has_many :plans, through: :procedures

  validates :name, precense: true
end
