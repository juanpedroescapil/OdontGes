class AddIndexUserIdSugerencia < ActiveRecord::Migration
  def change
     add_column :sugerencia, :user_id, :integer
    add_index :sugerencia, :user_id, :unique => false
  end
end
