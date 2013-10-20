class SimplifyDatabaseAndModel < ActiveRecord::Migration
  def up

    drop_table 'images'
    drop_table 'recipebooks'

  end

  def down

    create_table "images", :force => true do |t|
      t.text    "url"
      t.string  "target_location"
      t.integer "recipe_id"
    end

    create_table "recipebooks", :force => true do |t|
      t.string "owner"
      t.string "title"
    end

  end
end
