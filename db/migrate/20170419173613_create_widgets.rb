class CreateWidgets < ActiveRecord::Migration[5.0]
  def change
    create_table :widgets do |t|
      t.string :data_id
      t.string :user_id

      t.timestamps
    end
  end
end
