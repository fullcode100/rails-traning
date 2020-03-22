class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :reservations
  validates :name, :stock, presence: :true
  validates_numericality_of :stock, :greater_than_or_equal_to => 0
end
