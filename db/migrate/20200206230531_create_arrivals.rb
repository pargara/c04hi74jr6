class CreateArrivals < ActiveRecord::Migration[6.0]
  def change
    create_table :arrivals do |t|
      t.references :flight, index: true
      t.integer :status
      t.datetime :date
      t.integer :gate

      t.timestamps null: false
    end
    add_foreign_key :arrivals, :flights
  end
end
