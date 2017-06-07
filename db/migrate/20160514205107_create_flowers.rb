class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :f_name, limit: 20
      t.references :culture
      t.integer :cost, null: false
      t.references :garden_bed
      t.date :planting_date

    end
  end
end
