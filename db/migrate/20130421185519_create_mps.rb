class CreateMps < ActiveRecord::Migration
  def change
    create_table :mps do |t|
      t.string :name
      t.string :party
      t.text :bio
      t.integer :age
      t.integer :id_parliament
      t.boolean :current

      t.timestamps
    end
  end
end
