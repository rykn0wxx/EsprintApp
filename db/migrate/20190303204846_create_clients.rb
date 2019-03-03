class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name,         null: false, default: ""
      t.references :project,  foreign_key: true

      t.timestamps
    end
    add_index :clients, :name, unique: true
  end
end
