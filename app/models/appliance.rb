# frozen_string_literal: true

class Appliance < ApplicationRecord
  has_many :recipes

  validates :name, precense: true
end