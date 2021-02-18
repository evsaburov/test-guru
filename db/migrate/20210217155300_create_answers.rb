class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :body, null: false
      t.text :correct, null: false, default: 'empty'
      t.references :question, null: false, foreign_key: true
      t.reference :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
