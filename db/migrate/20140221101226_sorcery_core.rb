class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :email,            :null => false
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false

      t.timestamps
    end

    add_index :users, :email, unique: true
  end

  def self.down
    remove_table :users
  end
end