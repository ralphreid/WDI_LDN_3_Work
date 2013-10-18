class CreateTables < ActiveRecord::Migration
  def up
    create_table :actors do |t|
      t.string 'first_name'
      t.string 'last_name'
      t.date 'dob'
      t.text 'image'
    end

    create_table :movies do |t|
      t.string 'title'
      t.integer 'year'
      t.integer 'rated'
      t.string 'director'
      t.text 'image'
    end

    create_table :actors_movies, id: false do |t|
      t.integer :actor_id
      t.integer :movie_id
    end
  end

  def down
  end
end
