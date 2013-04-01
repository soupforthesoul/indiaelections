class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :name
      t.string :identifier
      t.string :state
      t.integer :number
      t.string :winner
      t.string :runner_up
      t.string :winner_party
      t.string :runner_up_party
      t.decimal :poll_percent
      t.integer :total_electors
      t.decimal :male
      t.decimal :female

      t.timestamps
    end
  end
end
