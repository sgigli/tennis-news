class CreateStandings < ActiveRecord::Migration[5.2]
  def change
    create_table :standings do |t|
      t.integer :ranking
      t.integer :points
      t.date :date
      t.references :stats, polymorphic: true

      t.timestamps
    end
  end
end
