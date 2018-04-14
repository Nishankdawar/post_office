class CreateMoneyExchanges < ActiveRecord::Migration
  def change
    create_table :money_exchanges do |t|
      t.integer :cid
      t.integer :passid
      t.string :type
      t.string :amount

      t.timestamps null: false
    end
  end
end
