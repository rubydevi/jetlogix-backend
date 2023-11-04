class ChangeEndTimeDataType < ActiveRecord::Migration[7.1]
  def change
    change_column :reservations, :end_time, :timestamp
  end
end
