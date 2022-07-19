class CreateSheets < ActiveRecord::Migration[7.0]
  def change
    create_table :sheets do |t|
      t.string :sheet_name
      t.integer :frames
      t.integer :rows
      t.integer :columns
      t.integer :reel_width
      t.integer :reel_height
      t.string :sheet_size

      t.timestamps
    end
  end
end
