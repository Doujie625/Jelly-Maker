class CreatePaths < ActiveRecord::Migration[7.0]
  def change
    create_table :paths do |t|
      t.string :id_element
      t.string :class_element
      t.string :d_element
      t.references :sprite, null: false, foreign_key: true

      t.timestamps
    end
  end
end
