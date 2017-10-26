class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name_user
      t.string :mail_user
      t.string :pass_user
      t.string :icon_user

      t.timestamps
    end
  end
end
