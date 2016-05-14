class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :date
      t.integer :cost
      t.references :flower, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true

    end
  end
end
