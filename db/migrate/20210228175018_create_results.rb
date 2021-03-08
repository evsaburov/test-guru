class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.references :test, null: false, foreign_key: true
      t.references :respondent, null: false, foreign_key: { to_table: :users }
      t.boolean :result, null: false,default: false

      t.timestamps
    end
  end
end
