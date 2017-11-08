class CreateSyojis < ActiveRecord::Migration[5.1]
  def change
    create_table :syojis do |t|
      t.string :title_syo
      t.string :artist
      t.integer :color_j
      t.string :title_j
      t.datetime :release
      t.boolean :snooze
      t.string :image_syo
      t.binary :image_binary
      t.string :image_type
      t.text :memo_syo
      t.string :url_syo
      t.boolean :notification_syo
      t.boolean :mail_syo
      t.datetime :notification_time
      t.integer :category

      t.timestamps
    end
  end
end
