class CreateTreeTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :tree_types do |t|
      t.string :name
      t.string :image
      t.decimal :price
      t.references :area, null: true
      t.references :tree, null: true
      t.string :description
      t.timestamps
    end
  end
end
