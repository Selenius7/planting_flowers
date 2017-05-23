class AddNotesForeignKeys < ActiveRecord::Migration
  def change
    add_reference :cultures, :note, foreign_key: true, index: true
    add_reference :garden_beds, :note, foreign_key: true, index: true
    add_reference :clients, :note, foreign_key: true, index: true
    add_reference :flowers, :note, foreign_key: true, index: true
    add_reference :elevations, :note, foreign_key: true, index: true
    add_reference :orders, :note, foreign_key: true, index: true
  end
end
