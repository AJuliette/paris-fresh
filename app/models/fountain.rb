class Fountain < ApplicationRecord
  scope :working, -> { where(working: true) }
  scope :with_addresss, -> { where.not(street_number: nil) }

  belongs_to :neighborhood
end
