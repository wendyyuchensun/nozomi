# frozen_string_literal: true

class Plan < ApplicationRecord
  has_many :procedures
  has_many :appliances, through: :procedures
  has_many :recipes, through: :procedures
  has_one :shopping_list

  validates :started_at, presence: true
  validates :ended_at, presence: true
end
