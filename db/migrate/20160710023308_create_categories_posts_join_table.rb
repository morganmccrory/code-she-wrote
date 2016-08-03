class CreateCategoriesPostsJoinTable < ActiveRecord::Migration
  def change
    create_table :categories_posts do |t|
      t.references :post, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
  end
end