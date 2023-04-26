class AddColumnsToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :activegame, :boolean
	add_column :games, :winner, :string
  end
end
