class ChangeFeeDataType < ActiveRecord::Migration[7.1]
  def change
    change_column :aeroplanes, :fee, :numeric
  end
end
