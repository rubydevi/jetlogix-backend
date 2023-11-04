class ChangeStartTimeDataType < ActiveRecord::Migration[7.1]
  def change
    change_column :reservations, :start_time, :timestamp
  end
end
