class CreateInitialTables < ActiveRecord::Migration
  def change
    
    create_table :recipebooks do |t|
      t.string :owner
      t.string :title
    end

    create_table :recipes do |t|
      t.string :name
      t.text :url
      t.string :type
      t.string :servings
      t.string :source
      t.string :author
      t.integer :rating
      t.integer :prep_time
      t.integer :cooking_time
      
      t.integer :recipebook_id      #foriegn key
    end

    create_table :ingredients do |t|
      t.string :name
      t.text :image
    end

    create_table :amounts do |t|
      t.boolean :metric
      t.string :measure
      t.string :quantity

      t.integer :ingredient_id      #foriegn key
    end

    create_table :instructions do |t|
      t.boolean :metric
      t.text :steps
      
      t.integer :recipe_id          #foriegn key
    end 

    create_table :images do |t|
      t.text :url
      t.string :type

      t.integer :recipe_id          #foriegn key
    end 

    # Join tables
    create_table :ingredients_recipes, id: :false do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
    end 
           

  end
end
