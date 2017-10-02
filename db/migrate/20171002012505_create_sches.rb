class CreateSches < ActiveRecord::Migration[5.1]
  def change
    create_table :sches do |t|
      t.datetime :schedule_at
      t.string :name_sche
      t.integer :icon_id
      t.datetime :notification_time
      t.boolean :snooze
      t.string :place
      t.text :memo_sche
      t.boolean :mail_sche

      t.timestamps
    end
  end
end
