class ChangeColumnNameOfPostType < ActiveRecord::Migration
  def change
  	rename_column :post_types, :type, :ptype
  end
end
