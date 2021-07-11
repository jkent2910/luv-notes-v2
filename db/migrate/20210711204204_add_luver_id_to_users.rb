class AddLuverIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :luver_id, :integer
  end
end
