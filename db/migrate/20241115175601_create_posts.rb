class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :tittle
      t.text :content
      t.string :status
      t.references :users, null: false, foreign_key: true
      t.references :posts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
