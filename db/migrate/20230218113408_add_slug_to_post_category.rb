class AddSlugToPostCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :post_categories, :slug, :string
    add_index :post_categories, :slug, unique: true
  end
end
