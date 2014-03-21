class CreateCredentials < ActiveRecord::Migration
  def self.up
    create_table :credentials do |t|
       t.string :name
       t.string :password
       t.string :url
       t.text :comment
       t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :credentials
  end
end
