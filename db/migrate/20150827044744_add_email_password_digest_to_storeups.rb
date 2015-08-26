class AddEmailPasswordDigestToStoreups < ActiveRecord::Migration
  def change
    add_column :storeups, :email, :string
    add_column :storeups, :password_digest, :string
  end
end
