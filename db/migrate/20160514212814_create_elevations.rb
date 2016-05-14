class CreateElevations < ActiveRecord::Migration
  def change
    create_table :elevations do |t|
      t.references :action, index: true, foreign_key: true
      t.references :flower, index: true, foreign_key: true
      t.date :elevation_data
      t.string :comment, limit: 200

      t.timestamps null: false
    end
  end
end
