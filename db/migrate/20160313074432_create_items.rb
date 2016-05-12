class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type
      t.string :name
      t.text :information
      t.float :price

      t.timestamps null: false
    end
  end
end
