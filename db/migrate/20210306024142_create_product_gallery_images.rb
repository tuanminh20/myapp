class CreateProductGalleryImages < ActiveRecord::Migration[6.1]
  def change
    create_table :product_gallery_images do |t|
      t.string :image
      t.references :product, foreign_key: true
      t.references :product_size, foreign_key: true

      t.timestamps
    end
  end
end
