class DropInstructionsTable < ActiveRecord::Migration
  def up
    drop_table :instructions
  end

  def down
  end
end
