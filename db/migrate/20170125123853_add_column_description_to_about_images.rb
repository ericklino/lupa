class AddColumnDescriptionToAboutImages < ActiveRecord::Migration[5.0]
  def change
    add_column :about_images, :description, :string
  end
end
