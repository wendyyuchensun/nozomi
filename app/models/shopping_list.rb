# frozen_string_literal: true

class ShoppingList < ApplicationRecord
  belongs_to :plan
end
