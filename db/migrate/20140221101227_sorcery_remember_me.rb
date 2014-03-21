class SorceryRememberMe < ActiveRecord::Migration
  def self.up
    add_column :users, :remember_me_token, :string, :default => nil
    add_column :users, :remember_me_token_expires_at, :datetime, :default => nil

    add_index :users, :remember_me_token
  end

  def self.down
    remove_column :users, :remember_me_token, :string
    remove_column :users, :remember_me_token_expires_at, :datetime
  end

end