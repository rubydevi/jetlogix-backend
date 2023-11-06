class CreateAeroplanes < ActiveRecord::Migration[7.1]
  def change
    create_table :aeroplanes do |t|
      t.string :name
      t.string :model
      t.string :image
      t.string :description
      t.integer :number_of_seats
      t.string :location
      t.numeric :fee
      t.boolean :reserved

      t.timestamps
    end
  end
end
