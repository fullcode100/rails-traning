class Client < ApplicationRecord
  has_many :reservations, dependent: :destroy
  validates :name, presence: :true

  accepts_nested_attributes_for :reservations, allow_destroy: true
end
