class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.date :reserved_date
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :start_location
      t.string :destination
      t.references :user, null: false, foreign_key: true
      t.references :aeroplane, null: false, foreign_key: true

      t.timestamps
    end
  end
end
