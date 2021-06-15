class AddCoachesToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :coach, :string, :default => [].to_yaml
  end
end
