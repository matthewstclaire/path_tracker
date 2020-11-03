class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id, null: false
      t.integer :workout_id, null: false

      t.timestamps
    end
  end
end
