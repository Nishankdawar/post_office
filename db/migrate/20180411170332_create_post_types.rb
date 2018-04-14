class CreatePostTypes < ActiveRecord::Migration
  def change
    create_table :post_types do |t|
      t.integer :post_id
      t.string :type

      t.timestamps null: false
    end
  end
end
