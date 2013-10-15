class CreateBooks < ActiveRecord::Migration
  def up
    create_table :books do |t|
      t.string :title
      t.integer :pages_number
      t.string :author
      t.text :content
    end
  end

  def down
    drop_table :books
  end
end
