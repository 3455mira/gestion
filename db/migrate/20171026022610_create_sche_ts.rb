class CreateScheTs < ActiveRecord::Migration[5.1]
  def change
    create_table :sche_ts do |t|
      t.datetime :schedule_at
      t.string :name_sche
      t.integer :sche_id

      t.timestamps
    end
  end
end
