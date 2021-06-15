class AddCountryToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_reference :players, :country, foreign_key: true
  end
end
