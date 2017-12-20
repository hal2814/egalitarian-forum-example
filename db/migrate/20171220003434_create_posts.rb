class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.float :score
      t.string :thumbnail
      t.integer :user_id
      t.integer :forum_id

      t.timestamps
    end
  end
end
