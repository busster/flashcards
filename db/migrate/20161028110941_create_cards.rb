class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question, { null: false }
      t.string :answer, { null: false }
      t.integer :deck_id
      t.boolean :correct, default: false
      t.boolean :already_guessed, default: false

      t.timestamps(null: false)
    end
  end
end
