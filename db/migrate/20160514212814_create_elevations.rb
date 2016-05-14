class CreateElevations < ActiveRecord::Migration
  def change
    create_table :elevations do |t|
      t.references :deed, index: true, foreign_key: true
      t.references :flower, index: true, foreign_key: true
      t.date :elevation_data
      t.string :comment, limit: 200

    end
  end
end
