# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :appliance

  validates :name, precense: true
end
