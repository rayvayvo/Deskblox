class FixTheBustedMigrations < ActiveRecord::Migration[5.0]
  def change
    drop_table :widgets
    create_table :widgets do |t|
      t.string :data_url
      t.string :data_source
      t.string :name
      t.string :size
      t.text   :data_string
    end
  end
end
