class CreateUserWidgets < ActiveRecord::Migration[5.0]
  def change
    create_table :user_widgets do |t|
      t.string :user_id
      t.string :widget_id

      t.timestamps
    end
  end
end
