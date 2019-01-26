class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :introduction
      t.date :birthyear
      t.string :avatar
      t.string :style
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :artists, [:user_id, :created_at] 
  end
end
