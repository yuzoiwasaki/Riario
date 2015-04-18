class AddPictureToNikki < ActiveRecord::Migration
  def change
    add_column :nikkis, :picture, :string
  end
end
