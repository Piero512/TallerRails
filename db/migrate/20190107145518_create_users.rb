class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :pass
      t.date :dob
      t.string :type_account
      t.string :city
      t.string :country

      t.timestamps null: false
    end
  end
end
