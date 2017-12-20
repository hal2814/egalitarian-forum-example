class CreateStandings < ActiveRecord::Migration[5.1]
  def change
    create_table :standings do |t|
      t.integer :ranking
      t.integer :user_id
      t.integer :forum_id

      t.timestamps
    end
  end
end
