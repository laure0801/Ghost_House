class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|

      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true
      t.date :arrival
      t.date :departure

      t.timestamps
    end
  end
end
