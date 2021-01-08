class CreateAdvises < ActiveRecord::Migration[6.1]
  def change
    create_table :advises do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
