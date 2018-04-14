class AddPoTypeToPostoffice < ActiveRecord::Migration
  def change
    add_column :postoffices, :po_type, :string
  end
end
