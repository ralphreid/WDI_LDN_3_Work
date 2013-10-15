class AddPublishingToBooks < ActiveRecord::Migration
  def change
    add_column :books, :publishing, :string
    add_column :books, :released, :date
  end
end
