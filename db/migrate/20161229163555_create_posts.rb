class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :wish

      t.timestamps null: false
    end
  end
end
