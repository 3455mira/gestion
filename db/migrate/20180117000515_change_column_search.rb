class ChangeColumnSearch < ActiveRecord::Migration[5.1]
  def change

    rename_column :searches, :search, :name

  end
end
