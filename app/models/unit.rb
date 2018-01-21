# frozen_string_literal: true

class Unit < ApplicationRecord
  validates :name, precense: true
end
