class AddColumnSyoji4 < ActiveRecord::Migration[5.1]
  def change

    add_column :syojis, :volume_have, :integer
    
  end
end
