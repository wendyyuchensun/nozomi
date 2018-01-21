# frozen_string_literal: true

class Material < ApplicationRecord
  belongs_to :unit

  validates :name, precense: true
end
