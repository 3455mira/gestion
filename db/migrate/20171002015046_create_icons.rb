class CreateIcons < ActiveRecord::Migration[5.1]
  def change
    create_table :icons do |t|
      t.string :name_icon
      t.string :image_icon
      t.binary :image_binary
      t.string :image_type

      t.timestamps
    end
  end
end
