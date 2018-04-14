class CreatePostoffices < ActiveRecord::Migration
  def change
    create_table :postoffices do |t|
      t.integer :post_id
      t.string :name
      t.string :location
      t.string :description

      t.timestamps null: false
    end
  end
end
