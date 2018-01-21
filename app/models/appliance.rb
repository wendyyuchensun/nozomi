# frozen_string_literal: true

class Appliance < ApplicationRecord
  validates :name, precense: true
end
