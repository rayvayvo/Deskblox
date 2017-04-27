class AddTweetsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :user_name
      t.string :text
      t.string :avatar
      t.string :handle
      t.boolean :possibly_sensitive
      t.timestamps
    end

  end
end
