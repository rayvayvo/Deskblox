class UpdateWidgetTable < ActiveRecord::Migration[5.0]
  def change
    change_table :widgets do |t|
      t.rename :body, :data_url
      t.rename :source, :data_source
      t.text :data_string
    end
  end
end
