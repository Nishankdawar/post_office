class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :cid
      t.string :cname
      t.string :address
      t.integer :age

      t.timestamps null: false
    end
  end
end
