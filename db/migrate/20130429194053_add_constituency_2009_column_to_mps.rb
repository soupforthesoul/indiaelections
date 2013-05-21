class AddConstituency2009ColumnToMps < ActiveRecord::Migration
  def change
    add_column :mps, :constituency_2009, :string
  end
end
