class CreateWidgets < ActiveRecord::Migration[5.0]
  def change
    drop_table :widgets
    create_table :widgets do |t|
      t.string :body
      t.string :source

      t.timestamps
    end
  end
end
