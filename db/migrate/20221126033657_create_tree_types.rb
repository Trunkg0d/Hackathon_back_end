class CreateTreeTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :tree_types do |t|
      t.string :name
      t.string :image
      t.decimal :price
      t.references :area
      t.references :tree 
      t.string :description
      t.timestamps
    end
  end
end
