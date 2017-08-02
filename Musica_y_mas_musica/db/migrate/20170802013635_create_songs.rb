class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :number
      t.string :preview_url
      t.string :album_id

      t.timestamps
    end
  end
end