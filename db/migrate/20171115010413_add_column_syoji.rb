class AddColumnSyoji < ActiveRecord::Migration[5.1]
  def change
    
        add_column :syojis, :user_id, :integer
    
  end
end
