class AddTableGdps < ActiveRecord::Migration
  def change
    create_table :gdps do |t|
      t.string :quarter
      t.decimal :gdp
    end
  end
end
