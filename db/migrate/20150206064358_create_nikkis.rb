class CreateNikkis < ActiveRecord::Migration
  def change
    create_table :nikkis do |t|
      t.text :title,  null:false
      t.text :description,  null:false

      t.timestamps null: false
    end
  end
end
