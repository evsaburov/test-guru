class AddRespondentToTest < ActiveRecord::Migration[6.1]
  def change
    add_reference :tests, :respondent, null: false, foreign_key: { to_table: :users }
  end
end
