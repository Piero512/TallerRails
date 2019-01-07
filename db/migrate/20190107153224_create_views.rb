class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.date :date
      t.integer :rating
      t.references :user, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
