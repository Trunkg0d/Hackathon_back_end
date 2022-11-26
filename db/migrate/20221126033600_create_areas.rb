class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :address
      t.string :org_name
      t.decimal :area
      t.decimal :x
      t.decimal :y
      t.integer :limit
      t.string :image

      t.timestamps
    end
  end
end
