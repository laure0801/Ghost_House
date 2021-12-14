class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.text :description
      t.float :price
      t.string :address
      t.date :disponibility
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
