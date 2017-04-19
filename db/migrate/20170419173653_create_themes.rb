class CreateThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :themes do |t|
      t.string :colour
      t.string :font
      t.string :background

      t.timestamps
    end
  end
end
