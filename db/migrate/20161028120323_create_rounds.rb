class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :total_guesses
      t.integer :first_try
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
