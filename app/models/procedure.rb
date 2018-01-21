# frozen_string_literal: true

class Procedure < ApplicationRecord
  belongs_to :plan
  belongs_to :appliance
  belongs_to :recipe
end
