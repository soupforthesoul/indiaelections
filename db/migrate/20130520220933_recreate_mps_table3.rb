class RecreateMpsTable3 < ActiveRecord::Migration
  def up
  	create_table :mps do |t|
      t.string :name
      t.string :party
      t.text :bio
      t.integer :age
      t.integer :id_parliament
      t.boolean :current
      t.string :affidavit_2009
      t.string :state_2009
      t.string :constituency_2009
      t.string :mynetaid

      t.timestamps
  end
end


  def down
    drop_table :mps
  end
end
