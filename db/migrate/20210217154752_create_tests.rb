class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.text :title, null: false
      t.integer :level, null: false, default: 0
      t.references :categoriy, null: false, foreign_key: true
      t.reference :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
