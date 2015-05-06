class RemoveOwnerIdToNikkis < ActiveRecord::Migration
  def change
    remove_column :nikkis, :owner_id, :string
  end
end
