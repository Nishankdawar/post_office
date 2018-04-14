class CreatePostofficeStaffs < ActiveRecord::Migration
  def change
    create_table :postoffice_staffs do |t|
      t.integer :sid
      t.integer :post_id
      t.date :date

      t.timestamps null: false
    end
  end
end
