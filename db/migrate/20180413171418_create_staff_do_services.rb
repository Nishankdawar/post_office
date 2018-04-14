class CreateStaffDoServices < ActiveRecord::Migration
  def change
    create_table :staff_do_services do |t|
      t.string :billno
      t.integer :sid
      t.date :date

      t.timestamps null: false
    end
  end
end
