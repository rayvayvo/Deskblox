class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    drop_table :settings
    create_table :settings do |t|
      t.integer :user_id
      t.integer :widget1_id
      t.integer :widget2_id
      t.integer :widget3_id
      t.integer :widget4_id
      t.integer :widget5_id
      t.integer :widget6_id
      t.integer :layout_id

      t.timestamps
    end
  end
end
