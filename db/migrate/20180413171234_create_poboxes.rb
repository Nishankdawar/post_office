class CreatePoboxes < ActiveRecord::Migration
  def change
    create_table :poboxes do |t|
      t.integer :cid
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
