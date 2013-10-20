class AddInstructionsToTable < ActiveRecord::Migration
  def up
    add_column :recipes, :instructions, :text
    remove_column :recipes, :recipebook_id
  end

  def down
    remove_column :recipes, :instructions
    add_column :recipes, :recipebook_id, :integer
  end

end
