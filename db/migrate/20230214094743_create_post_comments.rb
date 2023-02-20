class CreatePostComments < ActiveRecord::Migration[7.0]
  def change
    create_table :post_comments do |t|
      t.string :name
      t.string :email
      t.text :comment
      t.boolean :status, default: 0
      t.integer :post_id
      t.timestamps
    end
  end
end
