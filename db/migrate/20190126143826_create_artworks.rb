class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :name
      t.date :creation_time
      t.string :material
      t.string :width
      t.string :height
      t.string :depth
      t.text :description
      t.references :artist, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :artworks,[:artist_id, :user_id, :created_at]
  end
end
