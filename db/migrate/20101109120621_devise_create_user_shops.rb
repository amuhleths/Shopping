class DeviseCreateUserShops < ActiveRecord::Migration
  def self.up
    create_table(:user_shops) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      t.encryptable
      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :user_shops, :email,                :unique => true
    add_index :user_shops, :reset_password_token, :unique => true
    add_index :user_shops, :confirmation_token,   :unique => true
    # add_index :user_shops, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :user_shops
  end
end
