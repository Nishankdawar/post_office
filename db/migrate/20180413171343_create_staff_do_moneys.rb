class CreateStaffDoMoneys < ActiveRecord::Migration
  def change
    create_table :staff_do_moneys do |t|
      t.integer :passid
      t.integer :sid

      t.timestamps null: false
    end
  end
end
