class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :flower
      t.date :result_date
      t.string :comment, limit: 200

    end
  end
end
