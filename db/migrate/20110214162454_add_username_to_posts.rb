class AddUsernameToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :member_id, :integer
  end

  def self.down
    remove_column :posts, :member_id
  end
end
