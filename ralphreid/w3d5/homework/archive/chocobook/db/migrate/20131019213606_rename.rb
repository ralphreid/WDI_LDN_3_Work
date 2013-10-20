class Rename < ActiveRecord::Migration
  def up
    rename_column :images, :type, :target_location
    
  end

  def down
    rename_column :images, :target_location, :type
  end
end
