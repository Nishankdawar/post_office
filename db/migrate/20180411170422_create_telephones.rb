class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.integer :sid
      t.integer :telephone

      t.timestamps null: false
    end
  end
end
