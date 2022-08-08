# frozen_string_literal: true

class Place < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :rating, allow_blank: true, numericality: { in: 1..5 }
end
