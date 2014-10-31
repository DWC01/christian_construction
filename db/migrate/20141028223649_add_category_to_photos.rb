class AddCategoryToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :category, :string
    add_column :photos, :homepage, :boolean, default: false
  end
end
