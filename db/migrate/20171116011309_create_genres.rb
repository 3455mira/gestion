class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :color_g
      t.string :image_g
      t.binary :image_binary
      t.string :image_type

      t.timestamps
    end
  end
end
