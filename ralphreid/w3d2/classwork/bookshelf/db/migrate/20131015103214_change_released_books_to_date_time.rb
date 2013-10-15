class ChangeReleasedBooksToDateTime < ActiveRecord::Migration
  def up
    change_column :books, :released, :datetime
  end

  def down
    change_column :books, :released, :date
  end
end
