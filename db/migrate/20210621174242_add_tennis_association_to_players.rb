class AddTennisAssociationToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_reference :players, :tennis_association, foreign_key: true
  end
end
