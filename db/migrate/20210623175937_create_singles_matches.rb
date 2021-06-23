class CreateSinglesMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :singles_matches do |t|
      t.string :score
      t.integer :winner_id
      t.date :date
      t.integer :player_1_id
      t.integer :player_2_id
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
