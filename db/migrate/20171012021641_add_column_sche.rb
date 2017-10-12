class AddColumnSche < ActiveRecord::Migration[5.1]
  def change

    add_column :sches, :notification_sche, :boolean

  end
end
