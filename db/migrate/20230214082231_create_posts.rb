class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :post_category_id
      t.integer :game_id
      t.integer :user_id
      t.boolean :status, default: 0
      t.timestamps
    end
  end
end
