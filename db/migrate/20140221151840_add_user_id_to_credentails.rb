class AddUserIdToCredentails < ActiveRecord::Migration
  def self.up
    add_column :credentials, :user_id, :integer
  end

  def self.down
    remove_column :credentials, :user_id
  end
end
