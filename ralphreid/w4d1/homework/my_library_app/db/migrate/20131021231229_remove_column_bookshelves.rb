class RemoveColumnBookshelves < ActiveRecord::Migration
  def up
    remove_column :bookshelves, :book_id
  end

  def down
    add_column :bookshelves, :book_id, :integer
  end
end
