class AddColumnToTournaments < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :color, :string
  end
end
