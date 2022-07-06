class CreateSprites < ActiveRecord::Migration[7.0]
  def change
    create_table :sprites do |t|
      t.string :name
      t.string :frame
      t.string :row
      t.string :column
      t.float :width
      t.float :height
      t.string :viewbox

      t.timestamps
    end
  end
end
