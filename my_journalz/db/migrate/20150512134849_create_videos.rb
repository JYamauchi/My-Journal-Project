class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.belongs_to :post
      t.text :video_path
      t.text :video_id
      t.timestamps null: false

    end
  end
end
