# frozen_string_literal: true

class Plan < ApplicationRecord
  validates :started_at, precense: true
  validates :ended_at, precense: true
end
