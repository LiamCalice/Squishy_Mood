class CreateStickers < ActiveRecord::Migration
  def change
    create_table :stickers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
