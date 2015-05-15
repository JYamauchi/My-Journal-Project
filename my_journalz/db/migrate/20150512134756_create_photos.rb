class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.belongs_to :post
    	t.text :image_path
    	t.text :image_id
    	t.timestamps null: false
    end
  end
end
