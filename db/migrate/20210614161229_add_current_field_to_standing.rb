class AddCurrentFieldToStanding < ActiveRecord::Migration[5.2]
  def change
    add_column :standings, :current, :boolean, default: false
  end
end
