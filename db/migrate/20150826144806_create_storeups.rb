class CreateStoreups < ActiveRecord::Migration
  def change
    create_table :storeups do |t|
      t.string :store_name
      t.string :licence
      t.string :owner_name
      t.string :owner_cnic

      t.timestamps null: false
    end
  end
end
