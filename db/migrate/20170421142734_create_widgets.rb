class CreateWidgets < ActiveRecord::Migration[5.0]
  def change
    create_table :widgets do |t|
      t.string :body
      t.string :source
      t.string :name
      t.string :size

      t.timestamps
    end
  end
end
