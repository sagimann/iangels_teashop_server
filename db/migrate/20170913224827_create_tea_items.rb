class CreateTeaItems < ActiveRecord::Migration[5.1]
  def change
    create_table :tea_items do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :link
      t.float :price
      t.string :type

      t.timestamps
    end
  end
end
