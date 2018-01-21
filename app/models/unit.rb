# frozen_string_literal: true

class Unit < ApplicationRecord
  has_many :materials

  validates :name, precense: true
end
