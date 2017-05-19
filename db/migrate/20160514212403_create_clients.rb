class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name, limit: 10
      t.string :last_name, limit: 10
      t.string :phone

    end
  end
end
