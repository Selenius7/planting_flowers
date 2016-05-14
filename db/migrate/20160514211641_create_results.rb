class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :flower
      t.date :result_date
      t.string :comment, limit: 200

      t.timestamps null: false
    end
  end
end
