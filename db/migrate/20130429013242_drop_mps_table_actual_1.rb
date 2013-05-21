class DropMpsTableActual1 < ActiveRecord::Migration
 def up
    drop_table :mps
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end


