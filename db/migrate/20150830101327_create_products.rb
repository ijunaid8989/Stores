class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :short_desc
      t.string :long_desc
      t.string :category_id

      t.timestamps null: false
    end
  end
end
