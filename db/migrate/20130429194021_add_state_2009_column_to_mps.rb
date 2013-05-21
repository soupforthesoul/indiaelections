class AddState2009ColumnToMps < ActiveRecord::Migration
  def change
    add_column :mps, :state_2009, :string
  end
end
