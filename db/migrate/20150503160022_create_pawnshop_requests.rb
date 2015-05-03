class CreatePawnshopRequests < ActiveRecord::Migration
  def change
    create_table :pawnshop_requests do |t|
      t.string :name, default: "", null: false
      t.string :image
      t.decimal :price, precision: 8, scale: 2, default: 0, null: false
      t.string :state, default: "new_request", null: false
      t.string :email, default: "", null: false

      t.timestamps null: false
    end
  end
end
