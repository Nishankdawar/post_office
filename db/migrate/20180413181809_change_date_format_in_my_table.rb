class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def change
  	change_column :postoffice_staffs, :date, :datetime
  end
end
