class CreateBookshelves < ActiveRecord::Migration
   def change
    create_table :bookshelves do |t|
      t.string :category
      t.belongs_to :book
      t.belongs_to :library
    end
  end
end
