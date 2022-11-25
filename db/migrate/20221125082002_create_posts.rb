class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :status
      t.string :title
      t.string :content
      t.integer :like
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
