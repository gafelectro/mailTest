class RemoveSendFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :send
  end

  def down
  end
end
