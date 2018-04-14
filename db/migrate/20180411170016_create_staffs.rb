class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :sname
      t.integer :sid
      t.string :designation
      t.string :address
      t.string :email

      t.timestamps null: false
    end
  end
end
