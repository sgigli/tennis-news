class CreateSinglesMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :singles_matches do |t|
      t.string :score
      t.string :winner
      t.integer :player_1_id
      t.integer :player_2_id

      t.timestamps
    end
  end
end
