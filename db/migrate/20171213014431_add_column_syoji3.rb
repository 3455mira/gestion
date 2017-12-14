class AddColumnSyoji3 < ActiveRecord::Migration[5.1]
  def change

    add_column :syojis, :volume, :integer

  end
end
