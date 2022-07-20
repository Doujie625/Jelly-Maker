class CreateSheets < ActiveRecord::Migration[7.0]
  def change
    create_table :sheets do |t|
      t.string :name
      t.float :frames
      t.float :rows
      t.float :columns
      t.float :reel_width
      t.float :reel_height
      t.string :sheet_size

      t.timestamps
    end
  end
end
