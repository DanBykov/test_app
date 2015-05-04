class AddAdminToPawnshopRequest < ActiveRecord::Migration
  def change
    add_column :pawnshop_requests, :admin, :boolean, default: false
  end
end
