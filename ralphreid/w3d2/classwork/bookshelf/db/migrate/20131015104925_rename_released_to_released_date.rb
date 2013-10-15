class RenameReleasedToReleasedDate < ActiveRecord::Migration
  def up
    rename_column :books, :released, :released_date
  end

  def down
    rename_column :books, :released_date, :released
  end
end
