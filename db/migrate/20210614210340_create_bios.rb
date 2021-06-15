class CreateBios < ActiveRecord::Migration[5.2]
  def change
    create_table :bios do |t|
      t.string :birthplace
      t.integer :age
      t.date :birthday
      t.string :mother
      t.string :father
      t.string :residence
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
