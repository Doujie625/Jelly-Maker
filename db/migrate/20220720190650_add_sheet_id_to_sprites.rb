class AddSheetIdToSprites < ActiveRecord::Migration[7.0]
  def change
    add_column :sprites, :sheet_id, :integer
    add_index :sprites, :sheet_id
  end
end
