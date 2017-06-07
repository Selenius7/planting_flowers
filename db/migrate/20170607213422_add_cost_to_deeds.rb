class AddCostToDeeds < ActiveRecord::Migration
  def change
    add_column :deeds, :cost, :integer, default: 0, null: false
  end
end
