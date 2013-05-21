class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.integer :age
      t.text :bio

      t.timestamps
    end
  end
end
