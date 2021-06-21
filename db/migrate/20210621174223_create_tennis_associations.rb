class CreateTennisAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :tennis_associations do |t|
      t.string :name
      t.string :acronym

      t.timestamps
    end
  end
end
