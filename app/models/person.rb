class Person < ApplicationRecord
  has_one :address

  accepts_nested_attributes_for :address

  validates :name, presence: true
end
