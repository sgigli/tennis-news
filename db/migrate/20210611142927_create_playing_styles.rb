class CreatePlayingStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :playing_styles do |t|
      t.string :racquet_hand
      t.string :backhand
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
