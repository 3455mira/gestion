class AddColumnSchee < ActiveRecord::Migration[5.1]
  def change

    add_column :sches, :syujitsu, :boolean
    add_column :sches, :url_sche, :string

  end
end
