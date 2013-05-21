class Add2009affidavitToMps < ActiveRecord::Migration
  def change
    add_column :mps, :affidavit_2009, :string
  end
end
