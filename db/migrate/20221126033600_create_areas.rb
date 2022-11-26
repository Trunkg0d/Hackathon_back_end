class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :address
      t.string :org_name
      t.decimal :width
      t.decimal :length
      t.decimal :x
      t.decimal :y
      t.integer :limit
      t.string :image
      t.integer :tree_count, default: 0

      t.timestamps
    end
  end
end
