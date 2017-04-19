class CreateData < ActiveRecord::Migration[5.0]
  def change
    create_table :data do |t|
      t.string :widget_id
      t.string :body
      t.string :source

      t.timestamps
    end
  end
end
