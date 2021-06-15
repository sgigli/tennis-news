class CreateDoublesStats < ActiveRecord::Migration[5.2]
  def change
    create_table :doubles_stats do |t|
      t.integer :ranking
      t.integer :points
      t.integer :career_titles
      t.integer :career_record
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
