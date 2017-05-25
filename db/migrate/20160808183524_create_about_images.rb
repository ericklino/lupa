class CreateAboutImages < ActiveRecord::Migration[5.0]
  def change
    create_table :about_images do |t|
      t.string :image
      t.references :about, foreign_key: true

      t.timestamps
    end
  end
end
