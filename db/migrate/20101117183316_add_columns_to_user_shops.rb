class AddColumnsToUserShops < ActiveRecord::Migration
  def self.up
    add_column :user_shops, :name, :string
  end

  def self.down
    remove_column :user_shops, :name
  end
end
