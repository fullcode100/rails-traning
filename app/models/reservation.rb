class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :client
  belongs_to :librarian
end
