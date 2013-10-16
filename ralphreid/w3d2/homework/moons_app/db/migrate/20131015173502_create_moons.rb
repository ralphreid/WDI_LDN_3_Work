class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.string :name
      t.text :image
      t.float :orbit
      t.float :diameter
      t.float :mass
      t.text :mother_planet
      t.integer :age

      t.timestamps
    end
  end
end
