class Event < ApplicationRecord
  has_many :venues, dependent: :destroy
  accepts_nested_attributes_for :venues
end
