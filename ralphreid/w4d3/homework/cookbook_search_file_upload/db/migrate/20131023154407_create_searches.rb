class CreateSearches < ActiveRecord::Migration
  def up
    ActiveRecord::Base.connection.execute <<-SQL
      CREATE VIEW searches AS 
        SELECT ingredients.id AS searchable_id, ingredients.name AS term,
          CAST ('Ingredient' AS varchar) AS searchable_type
        FROM ingredients
        UNION
        SELECT quantities.id AS searchable_id, quantities.description AS term,
          CAST ('Quantity' AS varchar) AS searchable_type
        FROM quantities
        UNION
        SELECT recipes.id AS searchable_id, recipes.name AS term,
          CAST ('Recipe' AS varchar) AS searchable_type
        FROM recipes
        UNION
        SELECT recipes.id AS searchable_id, recipes.course AS term,
          CAST ('Recipe' AS varchar) AS searchable_type
        FROM recipes
        UNION
        SELECT recipes.id AS searchable_id, recipes.instructions AS term,
          CAST ('Recipe' AS varchar) AS searchable_type
        FROM recipes
    SQL
  end

  def down
  end
end
