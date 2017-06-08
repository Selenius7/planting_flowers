class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :data_of_the_result
      t.text :note

      t.timestamps null: false
    end
  end
end
