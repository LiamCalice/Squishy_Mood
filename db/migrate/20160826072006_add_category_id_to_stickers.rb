class AddCategoryIdToStickers < ActiveRecord::Migration
  def change
    add_column :stickers, :category_id, :integer
  end
end
