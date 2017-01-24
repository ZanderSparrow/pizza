class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.string :thumbnail
      t.string :video_id
      t.string :description
      t.string :tags

      t.timestamps null: false
    end
  end
end
