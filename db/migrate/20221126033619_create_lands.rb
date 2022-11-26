class CreateLands < ActiveRecord::Migration[7.0]
  def change
    create_table :lands do |t|
      t.string :image
      t.references :area
      t.timestamps
    end
  end
end
