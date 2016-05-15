class CreateCultures < ActiveRecord::Migration
  def change
    create_table :cultures do |t|
      t.string :name, limit: 10

    end
  end
end
