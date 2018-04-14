class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :money_exchanges, :type, :metype
  end
end
