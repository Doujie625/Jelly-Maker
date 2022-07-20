class CreateSprites < ActiveRecord::Migration[7.0]
  def change
    create_table :sprites do |t|
      t.string :name
      t.integer :frame
      t.integer :row
      t.integer :column
      t.float :width
      t.float :height
      t.string :viewbox

      t.timestamps
    end
  end
end
