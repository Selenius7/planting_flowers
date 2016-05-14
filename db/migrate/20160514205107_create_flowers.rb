class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :f_name, limit: 20
      t.references :culture
      t.integer :cost
      t.references :garden_bed
      t.date :planting_date

      t.timestamps null: false
    end
  end
end
