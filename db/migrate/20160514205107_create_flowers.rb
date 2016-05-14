class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :f_name, limit: 20
      t.string :culture_name, limit: 20
      t.integer :cost
      t.integer :garden_bed_id, index: true
      t.date :planting_date

      t.timestamps null: false
    end
  end
end
