class CreateServicePayments < ActiveRecord::Migration
  def change
    create_table :service_payments do |t|
      t.string :billno
      t.date :date
      t.string :amount
      t.string :category

      t.timestamps null: false
    end
  end
end
