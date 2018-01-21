# frozen_string_literal: true

class Plan < ApplicationRecord
  has_many :procedures
  has_many :appliances, through: :procedures
  has_many :recipes, through: :procedures

  validates :started_at, precense: true
  validates :ended_at, precense: true
end