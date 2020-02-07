class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.references :airline, index: true
      t.string :number, limit: 10

      t.timestamps null: false
    end
    add_foreign_key :flights, :airlines
  end
end
