class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :client
  belongs_to :librarian

  after_create :diminuir_estoque_livro

  def diminuir_estoque_livro
    livro = book
    livro.stock -= 1
    livro.save!
  end
end
