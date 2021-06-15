class CreateSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.integer :height
      t.integer :weight
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
