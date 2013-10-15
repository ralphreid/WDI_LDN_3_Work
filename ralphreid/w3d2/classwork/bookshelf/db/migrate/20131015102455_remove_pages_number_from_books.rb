class RemovePagesNumberFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :pages_number
  end

  def down
    add_column :books, :pages_number, :integer
  end
end
