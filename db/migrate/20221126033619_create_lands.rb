class CreateLands < ActiveRecord::Migration[7.0]
  def change
    create_table :lands do |t|
      t.string :landimg
      t.references :area
      t.integer :limit
      t.integer :tree_count, default: 0
      t.timestamps
    end
  end
end
