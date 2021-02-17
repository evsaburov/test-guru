class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.text :title, null: false
      t.integer :level, null: false
      t.integer :categories_id, null: false

      t.timestamps
    end
  end
end
