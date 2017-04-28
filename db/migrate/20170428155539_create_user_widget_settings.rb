class CreateUserWidgetSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_widget_settings do |t|
      t.string :user_id
      t.string :youtube_url
      t.string :twitter_username
      t.string :twitter_password

      t.timestamps
    end
  end
end
