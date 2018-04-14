class ChangeDateFormatInMyTable1 < ActiveRecord::Migration
  def change
  	change_column :postoffice_staffs, :date, :string
  end
end
