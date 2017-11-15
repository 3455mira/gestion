class AddColumnSyoji < ActiveRecord::Migration[5.1]
  def change
    
        add_column :sches, :user_id, :integer
    
  end
end
