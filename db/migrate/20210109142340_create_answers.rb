class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.references :user, foreign_key: true, null: false
      t.references :advise, foreign_key: true, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
