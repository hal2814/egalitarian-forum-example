class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.float :score
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
