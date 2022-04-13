class Food < ApplicationRecord
  validates :name, presence: true
  validates :measurement_unit, comparison: { greater_than_or_equal_to: 0 }
  belongs_to :user
end
