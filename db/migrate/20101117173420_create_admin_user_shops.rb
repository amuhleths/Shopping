class CreateAdminUserShops < ActiveRecord::Migration
  def self.up
    create_table :admin_user_shops do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_user_shops
  end
end
