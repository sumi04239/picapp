class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.references :user, foreign_key: true
      t.text :title, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
