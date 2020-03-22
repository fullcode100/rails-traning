class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  validates :name, :stock, presence: :true

end
