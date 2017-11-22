class CreateSyojiTs < ActiveRecord::Migration[5.1]
  def change
    create_table :syoji_ts do |t|
      t.date :release
      t.string :title
      t.string :artist

      t.timestamps
    end
  end
end
