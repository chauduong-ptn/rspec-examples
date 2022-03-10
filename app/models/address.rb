class Address < ApplicationRecord
  belongs_to :person

  validates :country, presence: true

  after_save :update_person_timestamp

  def update_person_timestamp
    person.touch
  end
end
