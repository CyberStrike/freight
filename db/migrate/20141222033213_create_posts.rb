class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.string :title
      t.text :body
      t.boolean :published, default: false, null: false
      t.timestamps null: false
    end
    add_foreign_key :posts, :users
  end
end
