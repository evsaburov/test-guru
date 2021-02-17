class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :body, null: false
      t.integer :question_id, null: false

      t.timestamps
    end
  end
end
