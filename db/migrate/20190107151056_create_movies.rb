class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.text :cast
      t.string :plan
      t.integer :rating

      t.timestamps null: false
    end
  end
end
