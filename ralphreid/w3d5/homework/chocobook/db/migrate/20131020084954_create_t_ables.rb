class CreateTAbles < ActiveRecord::Migration
  def Change
    add_column :recipes, :image_url_large, :text
    add_column :recipes, :image_url_small, :text
    add_column :recipes, :instructions, :text

  end

  def Up
    drop_table :instructions
  end

  def Down
    create_table "instructions", :force => true do |t|
      t.boolean "metric"
      t.text    "steps"
      t.integer "recipe_id"
    end
  end
end
