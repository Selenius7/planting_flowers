class CreateGardenBeds < ActiveRecord::Migration
  def change
    create_table :garden_beds do |t|
      t.integer :num
      t.string :comment, limit: 200

    end
  end
end
