class AddOwnerIdToNikkis < ActiveRecord::Migration
  def change
    add_column :nikkis, :owner_id, :string
  end
end
