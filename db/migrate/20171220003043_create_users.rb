class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.datetime "created_at",                      null: false
      t.datetime "updated_at",                      null: false
      t.timestamps
    end
  end
end
