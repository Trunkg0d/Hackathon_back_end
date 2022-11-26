class CreateTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :trees do |t|
      t.references :user
      t.references :land
      t.references :tree_type
      t.string :treeimg
      t.timestamps
    end
  end
end
