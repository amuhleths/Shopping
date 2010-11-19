class CreateAdminShops < ActiveRecord::Migration
  def self.up
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :logo_url

      t.timestamps
    end
  end

  def self.down
    drop_table :shops
  end
end
