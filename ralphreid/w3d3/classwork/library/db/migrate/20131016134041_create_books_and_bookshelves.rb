class CreateBooksAndBookshelves < ActiveRecord::Migration
  def up
    create_table :bookshelves do |t|
      t.string "name"
      t.integer "quantity"
    end

    create_table :books do |t|
      t.string "title"
      t.integer "number_of_pages"
      t.belongs_to :bookshelf
    end

  end

  def down
  end
end
