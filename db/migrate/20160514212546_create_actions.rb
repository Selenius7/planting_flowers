class CreateActions < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.string :name, limit: 20

    end
  end
end
