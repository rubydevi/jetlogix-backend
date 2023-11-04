class RemoveTotalCostAndChangeTimeFields < ActiveRecord::Migration[7.1]
  def change
    remove_column :reservations, :total_cost, :decimal
  end
end
