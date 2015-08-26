class AddApprovalToStoreups < ActiveRecord::Migration
  def change
    add_column :storeups, :approval, :string
  end
end
