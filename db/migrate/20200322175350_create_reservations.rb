class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :book, foreign_key: true
      t.references :client, foreign_key: true
      t.references :librarian, foreign_key: true

      t.timestamps
    end
  end
end
