class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string 'firstname'
      t.string 'lastname'
    end

    create_table :authors_books, id: false do |t|
      t.integer :author_id
      t.integer :book_id
    end #this tells Ruby that we do not need a primary key for this join table

  end

  def down
  end
end
