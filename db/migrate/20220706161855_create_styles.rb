class CreateStyles < ActiveRecord::Migration[7.0]
  def change
    create_table :styles do |t|
      t.string :fill
      t.string :fill_opacity
      t.string :stroke
      t.float :stroke_fill
      t.float :stroke_width
      t.float :opacity

      t.timestamps
    end
  end
end
