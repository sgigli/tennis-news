class AddLastNameToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :last_name, :string
  end
end
