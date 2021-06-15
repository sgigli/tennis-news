class CreateEarnings < ActiveRecord::Migration[5.2]
  def change
    create_table :earnings do |t|
      t.integer :prize_money
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
