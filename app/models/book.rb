class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :reservations
  validates :name, :stock, presence: :true
  validates_numericality_of :stock, :greater_than_or_equal_to => 0

  scope :sort_by_my_author_name_asc, lambda { includes(:author).order("authors.name ASC")  }
  scope :sort_by_my_author_name_desc, lambda { includes(:author).order("authors.name DESC") }
end
