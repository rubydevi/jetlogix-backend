class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.date :reserved_date
      t.date :start_time
      t.date :end_time
      t.decimal :total_cost
      t.string :start_location
      t.string :destination
      t.references :user, null: false, foreign_key: true
      t.references :aeroplane, null: false, foreign_key: true

      t.timestamps
    end
  end
end
